
//mqsh.js
// depends on mqtt, colors, readcommand, corporal
// async shell for infinite number of clients
// todo: fix things, hacky v1 beta release, bad argument option handling
//	- also	need to add file transfer function for bbn update?
// 		~ kod ~
//
//
//HOW TO INSTALL:   $ mkdir mqsh; mv mqsh.js mqsh; cd mqsh; npm install mqtt; npm install corporal; npm install colors; npm install readcommand; echo done; nodejs mqsh.js localhost

//var sleep = require('sleep');
var mqtt    = require('mqtt');
var Corporal = require('corporal');
var colors = require("colors/safe");
var readcommand = require('readcommand');
var subtopic = 'data'
var pubtopic = 'shell'


var procargs = process.argv.slice(2);
var servername = procargs;
//take the process arguments as the mqtt server

function shell ()
{
        var client  = mqtt.connect('mqtt://' + servername);
        console.log("mqtt.connect " + procargs);

	client.on('connect', function ()
	{
		client.subscribe(subtopic);
		//  client.publish('lol', 'f');
	});

	client.on('message', function (topic, message)
	{
		// message is Buffer
		console.log("");
			console.log(colors.yellow(message.toString()));
		//  client.end();
	});

	var sigints = 0;

	readcommand.loop(function(err, args, str, next)
	{
		if (err && err.code !== 'SIGINT')
		{
			throw err;
		}
		else if (err)
		{
			if (sigints === 1)
			{
				//	callback();
				process.exit(0);
					;
			}
			else
			{
				sigints++;
					console.log('Press ^C again to exit.');
					return next();
			}
		}
		else
		{
			sigints = 0;
		}

		//console.log('Received args: %s', JSON.stringify(args));

		client.publish(pubtopic, args.join(" "));

			return next();
	});

}


var corporal = new Corporal(
{
	'commands':
	{
		'sh':
		{
			'description': 'open shell',
				'invoke': function(session, args, callback)
			{
				//session.stdout().write(args[0] + '\n');
				console.log(colors.blue(" [*] ") + colors.red("opening mqtt shell on ") + colors.green(servername));
					shell();
				//		callback();
			}
		},
			'echo':
		{
			'description': 'echo',
				'invoke': function(session, args, callback)
			{
				session.stdout().write(args[0] + '\n');
					callback();
			}
		},

			'server':
		{
			'description': 'current server',
				'invoke': function(session, args, callback)
			{
				//session.stdout().write(args[0] + '\n');
				console.log(servername);
					callback();
			}
		},
                        'subtopic':
                {
                        'description': 'current subscription topic',
                                'invoke': function(session, args, callback)
                        {
                                //session.stdout().write(args[0] + '\n');
                                console.log(subtopic);
                                        callback();
                        }
                },
                        'pubtopic':
                {
                        'description': 'current publish topic',
                                'invoke': function(session, args, callback)
                        {
                                //session.stdout().write(args[0] + '\n');
                                console.log(pubtopic);
                                        callback();
                        }
                },
                        'connect':
                {
                        'description': 'connect to current server',
                                'invoke': function(session, args, callback)
                        {
                                //session.stdout().write(args[0] + '\n');
                                console.log(servername);
					startlistener();
                                        callback();
                        }
                },
                        'chpub':
                {
                        'description': 'change pubtopic',
                                'invoke': function(session, args, callback)
                        {
                                        console.log(colors.yellow('changing publish topic to ') + colors.magenta(args));
                                        pubtopic = args;
                                        callback();
                        }
                },
                        'chsub':
                {
                        'description': 'change subtopic',
                                'invoke': function(session, args, callback)
                        {
                                        console.log(colors.yellow('changing subscription topic to ') + colors.magenta(args));
                                	subtopic = args;
					callback();
                        }
                },


			'chserv': 
		{
			'description': 'change mqtt server',
				'invoke': function(session, args, callback)
			{
				console.log(colors.yellow('changing mqtt server to ') + colors.magenta(args));
				servername = args;
				callback();
			}			
		}

	}
});

function startinteractive () 
{
	corporal.on('load', corporal.loop);
}


console.log('welcome to mqsh type help to begin');
startinteractive();

