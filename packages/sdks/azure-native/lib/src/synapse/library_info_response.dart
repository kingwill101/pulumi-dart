// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Library/package information of a Big Data pool powered by Apache Spark
class LibraryInfoResponse {
  /// Storage blob container name.
  final pulumi.Input<String>? containerName;
  /// Creator Id of the library/package.
  final pulumi.Input<String> creatorId;
  /// Name of the library.
  final pulumi.Input<String>? name;
  /// Storage blob path of library.
  final pulumi.Input<String>? path;
  /// Provisioning status of the library/package.
  final pulumi.Input<String> provisioningStatus;
  /// Type of the library.
  final pulumi.Input<String>? type;
  /// The last update time of the library.
  final pulumi.Input<String> uploadedTimestamp;

  /// Creates a new [LibraryInfoResponse].
  /// [containerName] Storage blob container name.
  /// [creatorId] Creator Id of the library/package.
  /// [name] Name of the library.
  /// [path] Storage blob path of library.
  /// [provisioningStatus] Provisioning status of the library/package.
  /// [type] Type of the library.
  /// [uploadedTimestamp] The last update time of the library.
  LibraryInfoResponse({
    this.containerName,
    required this.creatorId,
    this.name,
    this.path,
    required this.provisioningStatus,
    this.type,
    required this.uploadedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'creatorId': creatorId,
      'name': ?name,
      'path': ?path,
      'provisioningStatus': provisioningStatus,
      'type': ?type,
      'uploadedTimestamp': uploadedTimestamp,
    };
  }

  factory LibraryInfoResponse.fromMap(Map<String, dynamic> map) {
    return LibraryInfoResponse(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      creatorId: (map['creatorId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      provisioningStatus: (map['provisioningStatus'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uploadedTimestamp: (map['uploadedTimestamp'] as String).input(),
    );
  }
}

