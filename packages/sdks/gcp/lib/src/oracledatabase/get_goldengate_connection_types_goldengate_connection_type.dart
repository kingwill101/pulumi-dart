// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGoldengateConnectionTypesGoldengateConnectionType {
  /// The connection type of the Goldengate Connection Type resource.
  final pulumi.Input<String> connectionType;
  /// The name of the Goldengate Connection Type resource.
  final pulumi.Input<String> name;
  /// An array of technologyTypes supported for the connection type.
  final pulumi.Input<List<String>> technologyTypes;

  /// Creates a new [GetGoldengateConnectionTypesGoldengateConnectionType].
  /// [connectionType] The connection type of the Goldengate Connection Type resource.
  /// [name] The name of the Goldengate Connection Type resource.
  /// [technologyTypes] An array of technologyTypes supported for the connection type.
  const GetGoldengateConnectionTypesGoldengateConnectionType({
    required this.connectionType,
    required this.name,
    required this.technologyTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'name': name,
      'technologyTypes': technologyTypes,
    };
  }

  factory GetGoldengateConnectionTypesGoldengateConnectionType.fromMap(Map<String, dynamic> map) {
    return GetGoldengateConnectionTypesGoldengateConnectionType(
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      technologyTypes: pulumi.Input.fromValue((map['technologyTypes'] as List).cast<String>()),
    );
  }
}
