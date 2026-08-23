// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the appliance resource.
class DataStoreUtilizationDetailsResponse {
  /// The datastore name.
  final pulumi.Input<String> dataStoreName;
  /// The total snapshots created for server migration in the datastore.
  final pulumi.Input<double> totalSnapshotsCreated;
  /// The total count of snapshots supported by the datastore.
  final pulumi.Input<double> totalSnapshotsSupported;

  /// Creates a new [DataStoreUtilizationDetailsResponse].
  /// [dataStoreName] The datastore name.
  /// [totalSnapshotsCreated] The total snapshots created for server migration in the datastore.
  /// [totalSnapshotsSupported] The total count of snapshots supported by the datastore.
  const DataStoreUtilizationDetailsResponse({
    required this.dataStoreName,
    required this.totalSnapshotsCreated,
    required this.totalSnapshotsSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreName': dataStoreName,
      'totalSnapshotsCreated': totalSnapshotsCreated,
      'totalSnapshotsSupported': totalSnapshotsSupported,
    };
  }

  factory DataStoreUtilizationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataStoreUtilizationDetailsResponse(
      dataStoreName: pulumi.Input.fromValue(map['dataStoreName'] as String),
      totalSnapshotsCreated: pulumi.Input.fromValue(map['totalSnapshotsCreated'] as double),
      totalSnapshotsSupported: pulumi.Input.fromValue(map['totalSnapshotsSupported'] as double),
    );
  }
}
