// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDnsSettingsInternalViewsResult {
  /// When the view was created.
  final pulumi.Input<String> createdTime;
  /// Identifier.
  final pulumi.Input<String> id;
  /// When the view was last modified.
  final pulumi.Input<String> modifiedTime;
  /// The name of the view.
  final pulumi.Input<String> name;
  /// The list of zones linked to this view.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetAccountDnsSettingsInternalViewsResult].
  /// [createdTime] When the view was created.
  /// [id] Identifier.
  /// [modifiedTime] When the view was last modified.
  /// [name] The name of the view.
  /// [zones] The list of zones linked to this view.
  const GetAccountDnsSettingsInternalViewsResult({
    required this.createdTime,
    required this.id,
    required this.modifiedTime,
    required this.name,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': createdTime,
      'id': id,
      'modifiedTime': modifiedTime,
      'name': name,
      'zones': zones,
    };
  }

  factory GetAccountDnsSettingsInternalViewsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewsResult(
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
