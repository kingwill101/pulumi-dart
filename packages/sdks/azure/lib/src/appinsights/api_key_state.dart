// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// The API Key secret (Sensitive).
  final pulumi.Input<String>? apiKey;
  /// The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationInsightsId;
  /// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? readPermissions;
  /// Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one read or write permission must be defined.
  final pulumi.Input<List<String>>? writePermissions;

  /// Creates a new [ApiKeyState].
  /// [apiKey] The API Key secret (Sensitive).
  /// [applicationInsightsId] The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
  /// [readPermissions] Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  /// [writePermissions] Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  ApiKeyState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? readPermissions,
    pulumi.Output<List<String>>? writePermissions,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      name = pulumi.Input.asOptionalInput<String>(name),
      readPermissions = pulumi.Input.asOptionalInput<List<String>>(readPermissions),
      writePermissions = pulumi.Input.asOptionalInput<List<String>>(writePermissions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationInsightsId': ?applicationInsightsId,
      'name': ?name,
      'readPermissions': ?readPermissions,
      'writePermissions': ?writePermissions,
    };
  }

  factory ApiKeyState.fromMap(Map<String, dynamic> map) {
    return ApiKeyState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      readPermissions: map['readPermissions'] == null ? null : pulumi.Output.create<List<String>>((map['readPermissions'] as List).cast<String>()),
      writePermissions: map['writePermissions'] == null ? null : pulumi.Output.create<List<String>>((map['writePermissions'] as List).cast<String>()),
    );
  }
}

