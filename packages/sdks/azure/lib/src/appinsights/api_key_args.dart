// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_api_key_api_key_args_doc}
/// The set of arguments for ApiKey.
/// {@endtemplate}
/// {@macro pulumi_appinsights_api_key_api_key_args_doc}
class ApiKeyArgs {
  /// The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;
  /// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? readPermissions;
  /// Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one read or write permission must be defined.
  final pulumi.Input<List<String>>? writePermissions;

  /// Creates a new [ApiKeyArgs].
  /// [applicationInsightsId] The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
  /// [readPermissions] Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  /// [writePermissions] Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  ApiKeyArgs({
    required pulumi.Output<String> applicationInsightsId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? readPermissions,
    pulumi.Output<List<String>>? writePermissions,
  }) :
      applicationInsightsId = pulumi.Input.asInput<String>(applicationInsightsId),
      name = pulumi.Input.asOptionalInput<String>(name),
      readPermissions = pulumi.Input.asOptionalInput<List<String>>(readPermissions),
      writePermissions = pulumi.Input.asOptionalInput<List<String>>(writePermissions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': applicationInsightsId,
      'name': ?name,
      'readPermissions': ?readPermissions,
      'writePermissions': ?writePermissions,
    };
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      applicationInsightsId: pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      readPermissions: map['readPermissions'] == null ? null : pulumi.Output.create<List<String>>((map['readPermissions'] as List).cast<String>()),
      writePermissions: map['writePermissions'] == null ? null : pulumi.Output.create<List<String>>((map['writePermissions'] as List).cast<String>()),
    );
  }
}

