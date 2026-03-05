// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Script resources.
class ScriptState {
  /// Flag that indicates whether to continue if one of the command fails.
  final pulumi.Input<bool>? continueOnErrorsEnabled;
  /// The ID of the Kusto Database. Changing this forces a new Kusto Script to be created.
  final pulumi.Input<String>? databaseId;
  /// A unique string. If changed the script will be applied again.
  final pulumi.Input<String>? forceAnUpdateWhenValueChanged;
  /// The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created.
  final pulumi.Input<String>? name;
  /// Whether the script caller’s permissions remain in effect after the script has finished running? Possible values are `RemovePermissionOnScriptCompletion` and `RetainPermissionOnScriptCompletion`.
  final pulumi.Input<String>? principalPermissionsAction;
  /// The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sasToken;
  /// The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scriptContent;
  /// The type of script commands. Possible values are `Database` or `Cluster`. Defaults to `Database`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scriptLevel;
  /// The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script.
  final pulumi.Input<String>? url;

  /// Creates a new [ScriptState].
  /// [continueOnErrorsEnabled] Flag that indicates whether to continue if one of the command fails.
  /// [databaseId] The ID of the Kusto Database. Changing this forces a new Kusto Script to be created.
  /// [forceAnUpdateWhenValueChanged] A unique string. If changed the script will be applied again.
  /// [name] The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created.
  /// [principalPermissionsAction] Whether the script caller’s permissions remain in effect after the script has finished running? Possible values are `RemovePermissionOnScriptCompletion` and `RetainPermissionOnScriptCompletion`.
  /// [sasToken] The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created.
  /// [scriptContent] The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created.
  /// [scriptLevel] The type of script commands. Possible values are `Database` or `Cluster`. Defaults to `Database`. Changing this forces a new resource to be created.
  /// [url] The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script.
  ScriptState({
    this.continueOnErrorsEnabled,
    this.databaseId,
    this.forceAnUpdateWhenValueChanged,
    this.name,
    this.principalPermissionsAction,
    this.sasToken,
    this.scriptContent,
    this.scriptLevel,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnErrorsEnabled': ?continueOnErrorsEnabled,
      'databaseId': ?databaseId,
      'forceAnUpdateWhenValueChanged': ?forceAnUpdateWhenValueChanged,
      'name': ?name,
      'principalPermissionsAction': ?principalPermissionsAction,
      'sasToken': ?sasToken,
      'scriptContent': ?scriptContent,
      'scriptLevel': ?scriptLevel,
      'url': ?url,
    };
  }

  factory ScriptState.fromMap(Map<String, dynamic> map) {
    return ScriptState(
      continueOnErrorsEnabled: (() { final guardedValue = map['continueOnErrorsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceAnUpdateWhenValueChanged: (() { final guardedValue = map['forceAnUpdateWhenValueChanged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalPermissionsAction: (() { final guardedValue = map['principalPermissionsAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLevel: (() { final guardedValue = map['scriptLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

