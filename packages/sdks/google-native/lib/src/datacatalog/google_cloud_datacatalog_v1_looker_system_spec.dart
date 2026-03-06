// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification that applies to entries that are part `LOOKER` system (user_specified_type)
class GoogleCloudDatacatalogV1LookerSystemSpec {
  /// Name of the parent Looker Instance. Empty if it does not exist.
  final pulumi.Input<String>? parentInstanceDisplayName;
  /// ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  final pulumi.Input<String>? parentInstanceId;
  /// Name of the parent Model. Empty if it does not exist.
  final pulumi.Input<String>? parentModelDisplayName;
  /// ID of the parent Model. Empty if it does not exist.
  final pulumi.Input<String>? parentModelId;
  /// Name of the parent View. Empty if it does not exist.
  final pulumi.Input<String>? parentViewDisplayName;
  /// ID of the parent View. Empty if it does not exist.
  final pulumi.Input<String>? parentViewId;

  /// Creates a new [GoogleCloudDatacatalogV1LookerSystemSpec].
  /// [parentInstanceDisplayName] Name of the parent Looker Instance. Empty if it does not exist.
  /// [parentInstanceId] ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  /// [parentModelDisplayName] Name of the parent Model. Empty if it does not exist.
  /// [parentModelId] ID of the parent Model. Empty if it does not exist.
  /// [parentViewDisplayName] Name of the parent View. Empty if it does not exist.
  /// [parentViewId] ID of the parent View. Empty if it does not exist.
  const GoogleCloudDatacatalogV1LookerSystemSpec({
    this.parentInstanceDisplayName,
    this.parentInstanceId,
    this.parentModelDisplayName,
    this.parentModelId,
    this.parentViewDisplayName,
    this.parentViewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentInstanceDisplayName': ?parentInstanceDisplayName,
      'parentInstanceId': ?parentInstanceId,
      'parentModelDisplayName': ?parentModelDisplayName,
      'parentModelId': ?parentModelId,
      'parentViewDisplayName': ?parentViewDisplayName,
      'parentViewId': ?parentViewId,
    };
  }

  factory GoogleCloudDatacatalogV1LookerSystemSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1LookerSystemSpec(
      parentInstanceDisplayName: (() { final guardedValue = map['parentInstanceDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentInstanceId: (() { final guardedValue = map['parentInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentModelDisplayName: (() { final guardedValue = map['parentModelDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentModelId: (() { final guardedValue = map['parentModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentViewDisplayName: (() { final guardedValue = map['parentViewDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentViewId: (() { final guardedValue = map['parentViewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

