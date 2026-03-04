// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification that applies to entries that are part `LOOKER` system (user_specified_type)
class GoogleCloudDatacatalogV1LookerSystemSpecResponse {
  /// Name of the parent Looker Instance. Empty if it does not exist.
  final pulumi.Input<String> parentInstanceDisplayName;

  /// ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  final pulumi.Input<String> parentInstanceId;

  /// Name of the parent Model. Empty if it does not exist.
  final pulumi.Input<String> parentModelDisplayName;

  /// ID of the parent Model. Empty if it does not exist.
  final pulumi.Input<String> parentModelId;

  /// Name of the parent View. Empty if it does not exist.
  final pulumi.Input<String> parentViewDisplayName;

  /// ID of the parent View. Empty if it does not exist.
  final pulumi.Input<String> parentViewId;

  /// Creates a new [GoogleCloudDatacatalogV1LookerSystemSpecResponse].
  /// [parentInstanceDisplayName] Name of the parent Looker Instance. Empty if it does not exist.
  /// [parentInstanceId] ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  /// [parentModelDisplayName] Name of the parent Model. Empty if it does not exist.
  /// [parentModelId] ID of the parent Model. Empty if it does not exist.
  /// [parentViewDisplayName] Name of the parent View. Empty if it does not exist.
  /// [parentViewId] ID of the parent View. Empty if it does not exist.
  GoogleCloudDatacatalogV1LookerSystemSpecResponse({
    required this.parentInstanceDisplayName,
    required this.parentInstanceId,
    required this.parentModelDisplayName,
    required this.parentModelId,
    required this.parentViewDisplayName,
    required this.parentViewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentInstanceDisplayName': parentInstanceDisplayName,
      'parentInstanceId': parentInstanceId,
      'parentModelDisplayName': parentModelDisplayName,
      'parentModelId': parentModelId,
      'parentViewDisplayName': parentViewDisplayName,
      'parentViewId': parentViewId,
    };
  }

  factory GoogleCloudDatacatalogV1LookerSystemSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1LookerSystemSpecResponse(
      parentInstanceDisplayName: pulumi.Input.fromValue(
        map['parentInstanceDisplayName'] as String,
      ),
      parentInstanceId: pulumi.Input.fromValue(
        map['parentInstanceId'] as String,
      ),
      parentModelDisplayName: pulumi.Input.fromValue(
        map['parentModelDisplayName'] as String,
      ),
      parentModelId: pulumi.Input.fromValue(map['parentModelId'] as String),
      parentViewDisplayName: pulumi.Input.fromValue(
        map['parentViewDisplayName'] as String,
      ),
      parentViewId: pulumi.Input.fromValue(map['parentViewId'] as String),
    );
  }
}
