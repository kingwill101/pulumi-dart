// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_script_script_args_doc}
/// The set of arguments for Script.
/// {@endtemplate}
/// {@macro pulumi_kusto_script_script_args_doc}
class ScriptArgs {
  /// Flag that indicates whether to continue if one of the command fails.
  final pulumi.Input<bool>? continueOnErrorsEnabled;
  /// The ID of the Kusto Database. Changing this forces a new Kusto Script to be created.
  final pulumi.Input<String> databaseId;
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

  /// Creates a new [ScriptArgs].
  /// [continueOnErrorsEnabled] Flag that indicates whether to continue if one of the command fails.
  /// [databaseId] The ID of the Kusto Database. Changing this forces a new Kusto Script to be created.
  /// [forceAnUpdateWhenValueChanged] A unique string. If changed the script will be applied again.
  /// [name] The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created.
  /// [principalPermissionsAction] Whether the script caller’s permissions remain in effect after the script has finished running? Possible values are `RemovePermissionOnScriptCompletion` and `RetainPermissionOnScriptCompletion`.
  /// [sasToken] The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created.
  /// [scriptContent] The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created.
  /// [scriptLevel] The type of script commands. Possible values are `Database` or `Cluster`. Defaults to `Database`. Changing this forces a new resource to be created.
  /// [url] The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script.
  ScriptArgs({
    pulumi.Output<bool>? continueOnErrorsEnabled,
    required pulumi.Output<String> databaseId,
    pulumi.Output<String>? forceAnUpdateWhenValueChanged,
    pulumi.Output<String>? name,
    pulumi.Output<String>? principalPermissionsAction,
    pulumi.Output<String>? sasToken,
    pulumi.Output<String>? scriptContent,
    pulumi.Output<String>? scriptLevel,
    pulumi.Output<String>? url,
  }) :
      continueOnErrorsEnabled = pulumi.Input.asOptionalInput<bool>(continueOnErrorsEnabled),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      forceAnUpdateWhenValueChanged = pulumi.Input.asOptionalInput<String>(forceAnUpdateWhenValueChanged),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalPermissionsAction = pulumi.Input.asOptionalInput<String>(principalPermissionsAction),
      sasToken = pulumi.Input.asOptionalInput<String>(sasToken),
      scriptContent = pulumi.Input.asOptionalInput<String>(scriptContent),
      scriptLevel = pulumi.Input.asOptionalInput<String>(scriptLevel),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnErrorsEnabled': ?continueOnErrorsEnabled,
      'databaseId': databaseId,
      'forceAnUpdateWhenValueChanged': ?forceAnUpdateWhenValueChanged,
      'name': ?name,
      'principalPermissionsAction': ?principalPermissionsAction,
      'sasToken': ?sasToken,
      'scriptContent': ?scriptContent,
      'scriptLevel': ?scriptLevel,
      'url': ?url,
    };
  }

  factory ScriptArgs.fromMap(Map<String, dynamic> map) {
    return ScriptArgs(
      continueOnErrorsEnabled: map['continueOnErrorsEnabled'] == null ? null : pulumi.Output.create<bool>(map['continueOnErrorsEnabled'] as bool),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      forceAnUpdateWhenValueChanged: map['forceAnUpdateWhenValueChanged'] == null ? null : pulumi.Output.create<String>(map['forceAnUpdateWhenValueChanged'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalPermissionsAction: map['principalPermissionsAction'] == null ? null : pulumi.Output.create<String>(map['principalPermissionsAction'] as String),
      sasToken: map['sasToken'] == null ? null : pulumi.Output.create<String>(map['sasToken'] as String),
      scriptContent: map['scriptContent'] == null ? null : pulumi.Output.create<String>(map['scriptContent'] as String),
      scriptLevel: map['scriptLevel'] == null ? null : pulumi.Output.create<String>(map['scriptLevel'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

