// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Watcher resources.
class WatcherState {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  final pulumi.Input<String>? automationAccountId;

  /// A description of this Automation Watcher.
  final pulumi.Input<String>? description;

  /// A string of etag assigned to this Automation Watcher.
  final pulumi.Input<String>? etag;

  /// Specify the frequency at which the watcher is invoked.
  final pulumi.Input<int>? executionFrequencyInSeconds;

  /// The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created.
  final pulumi.Input<String>? name;

  /// Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? scriptName;

  /// Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created.
  final pulumi.Input<Map<String, String>>? scriptParameters;

  /// Specify the name of the Hybrid work group the watcher will run on.
  final pulumi.Input<String>? scriptRunOn;

  /// The current status of the Automation Watcher.
  final pulumi.Input<String>? status;

  /// A mapping of tags which should be assigned to the Automation Watcher.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WatcherState].
  /// [automationAccountId] The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  /// [description] A description of this Automation Watcher.
  /// [etag] A string of etag assigned to this Automation Watcher.
  /// [executionFrequencyInSeconds] Specify the frequency at which the watcher is invoked.
  /// [location] The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created.
  /// [name] The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created.
  /// [scriptName] Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created.
  /// [scriptParameters] Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created.
  /// [scriptRunOn] Specify the name of the Hybrid work group the watcher will run on.
  /// [status] The current status of the Automation Watcher.
  /// [tags] A mapping of tags which should be assigned to the Automation Watcher.
  WatcherState({
    this.automationAccountId,
    this.description,
    this.etag,
    this.executionFrequencyInSeconds,
    this.location,
    this.name,
    this.scriptName,
    this.scriptParameters,
    this.scriptRunOn,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': ?automationAccountId,
      'description': ?description,
      'etag': ?etag,
      'executionFrequencyInSeconds': ?executionFrequencyInSeconds,
      'location': ?location,
      'name': ?name,
      'scriptName': ?scriptName,
      'scriptParameters': ?scriptParameters,
      'scriptRunOn': ?scriptRunOn,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory WatcherState.fromMap(Map<String, dynamic> map) {
    return WatcherState(
      automationAccountId: (() {
        final guardedValue = map['automationAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionFrequencyInSeconds: (() {
        final guardedValue = map['executionFrequencyInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scriptName: (() {
        final guardedValue = map['scriptName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scriptParameters: (() {
        final guardedValue = map['scriptParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      scriptRunOn: (() {
        final guardedValue = map['scriptRunOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
