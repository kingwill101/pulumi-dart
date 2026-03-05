// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStorageBoxTypesStorageBoxType {
  /// Maximum number of snapshots created automatically by a snapshot plan.
  final pulumi.Input<int> automaticSnapshotLimit;
  /// Date of the Storage Box Type deprecation announcement.
  final pulumi.Input<String> deprecationAnnounced;
  /// Description of the Storage Box Type.
  final pulumi.Input<String> description;
  /// ID of the Storage Box Type.
  final pulumi.Input<int> id;
  /// Whether the Storage Box Type is deprecated.
  final pulumi.Input<bool> isDeprecated;
  /// Name of the Storage Box Type.
  final pulumi.Input<String> name;
  /// Available storage in bytes.
  final pulumi.Input<int> size;
  /// Maximum number of allowed manual snapshots.
  final pulumi.Input<int> snapshotLimit;
  /// Maximum number of subaccounts.
  final pulumi.Input<int> subaccountsLimit;
  /// Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  final pulumi.Input<String> unavailableAfter;

  /// Creates a new [GetStorageBoxTypesStorageBoxType].
  /// [automaticSnapshotLimit] Maximum number of snapshots created automatically by a snapshot plan.
  /// [deprecationAnnounced] Date of the Storage Box Type deprecation announcement.
  /// [description] Description of the Storage Box Type.
  /// [id] ID of the Storage Box Type.
  /// [isDeprecated] Whether the Storage Box Type is deprecated.
  /// [name] Name of the Storage Box Type.
  /// [size] Available storage in bytes.
  /// [snapshotLimit] Maximum number of allowed manual snapshots.
  /// [subaccountsLimit] Maximum number of subaccounts.
  /// [unavailableAfter] Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  GetStorageBoxTypesStorageBoxType({
    required this.automaticSnapshotLimit,
    required this.deprecationAnnounced,
    required this.description,
    required this.id,
    required this.isDeprecated,
    required this.name,
    required this.size,
    required this.snapshotLimit,
    required this.subaccountsLimit,
    required this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSnapshotLimit': automaticSnapshotLimit,
      'deprecationAnnounced': deprecationAnnounced,
      'description': description,
      'id': id,
      'isDeprecated': isDeprecated,
      'name': name,
      'size': size,
      'snapshotLimit': snapshotLimit,
      'subaccountsLimit': subaccountsLimit,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetStorageBoxTypesStorageBoxType.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypesStorageBoxType(
      automaticSnapshotLimit: pulumi.Input.fromValue(map['automaticSnapshotLimit'] as int),
      deprecationAnnounced: pulumi.Input.fromValue(map['deprecationAnnounced'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      isDeprecated: pulumi.Input.fromValue(map['isDeprecated'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotLimit: pulumi.Input.fromValue(map['snapshotLimit'] as int),
      subaccountsLimit: pulumi.Input.fromValue(map['subaccountsLimit'] as int),
      unavailableAfter: pulumi.Input.fromValue(map['unavailableAfter'] as String),
    );
  }
}

