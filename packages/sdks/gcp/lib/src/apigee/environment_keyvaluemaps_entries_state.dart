// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentKeyvaluemapsEntries resources.
class EnvironmentKeyvaluemapsEntriesState {
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  final pulumi.Input<String>? envKeyvaluemapId;
  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  /// Required. Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentKeyvaluemapsEntriesState].
  /// [envKeyvaluemapId] The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// [name] Required. Resource URI that can be used to identify the scope of the key value map entries.
  /// [value] Required. Data or payload that is being retrieved and associated with the unique key.
  EnvironmentKeyvaluemapsEntriesState({
    this.envKeyvaluemapId,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envKeyvaluemapId': ?envKeyvaluemapId,
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentKeyvaluemapsEntriesState.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsEntriesState(
      envKeyvaluemapId: map['envKeyvaluemapId'] == null ? null : (map['envKeyvaluemapId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

