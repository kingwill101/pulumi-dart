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
      continueOnErrorsEnabled: map['continueOnErrorsEnabled'] == null ? null : (map['continueOnErrorsEnabled']! as bool).input(),
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as String).input(),
      forceAnUpdateWhenValueChanged: map['forceAnUpdateWhenValueChanged'] == null ? null : (map['forceAnUpdateWhenValueChanged']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      principalPermissionsAction: map['principalPermissionsAction'] == null ? null : (map['principalPermissionsAction']! as String).input(),
      sasToken: map['sasToken'] == null ? null : (map['sasToken']! as String).input(),
      scriptContent: map['scriptContent'] == null ? null : (map['scriptContent']! as String).input(),
      scriptLevel: map['scriptLevel'] == null ? null : (map['scriptLevel']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

