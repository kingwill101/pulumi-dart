// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_watcher_watcher_args_doc}
/// The set of arguments for Watcher.
/// {@endtemplate}
/// {@macro pulumi_automation_watcher_watcher_args_doc}
class WatcherArgs {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  final pulumi.Input<String> automationAccountId;
  /// A description of this Automation Watcher.
  final pulumi.Input<String>? description;
  /// A string of etag assigned to this Automation Watcher.
  final pulumi.Input<String>? etag;
  /// Specify the frequency at which the watcher is invoked.
  final pulumi.Input<int> executionFrequencyInSeconds;
  /// The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created.
  final pulumi.Input<String>? name;
  /// Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created.
  final pulumi.Input<String> scriptName;
  /// Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created.
  final pulumi.Input<Map<String, String>>? scriptParameters;
  /// Specify the name of the Hybrid work group the watcher will run on.
  final pulumi.Input<String> scriptRunOn;
  /// A mapping of tags which should be assigned to the Automation Watcher.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WatcherArgs].
  /// [automationAccountId] The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  /// [description] A description of this Automation Watcher.
  /// [etag] A string of etag assigned to this Automation Watcher.
  /// [executionFrequencyInSeconds] Specify the frequency at which the watcher is invoked.
  /// [location] The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created.
  /// [name] The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created.
  /// [scriptName] Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created.
  /// [scriptParameters] Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created.
  /// [scriptRunOn] Specify the name of the Hybrid work group the watcher will run on.
  /// [tags] A mapping of tags which should be assigned to the Automation Watcher.
  WatcherArgs({
    required this.automationAccountId,
    this.description,
    this.etag,
    required this.executionFrequencyInSeconds,
    this.location,
    this.name,
    required this.scriptName,
    this.scriptParameters,
    required this.scriptRunOn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'description': ?description,
      'etag': ?etag,
      'executionFrequencyInSeconds': executionFrequencyInSeconds,
      'location': ?location,
      'name': ?name,
      'scriptName': scriptName,
      'scriptParameters': ?scriptParameters,
      'scriptRunOn': scriptRunOn,
      'tags': ?tags,
    };
  }

  factory WatcherArgs.fromMap(Map<String, dynamic> map) {
    return WatcherArgs(
      automationAccountId: (map['automationAccountId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      executionFrequencyInSeconds: (map['executionFrequencyInSeconds'] as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      scriptName: (map['scriptName'] as String).input(),
      scriptParameters: map['scriptParameters'] == null ? null : ((map['scriptParameters']! as Map).cast<String, String>()).input(),
      scriptRunOn: (map['scriptRunOn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

