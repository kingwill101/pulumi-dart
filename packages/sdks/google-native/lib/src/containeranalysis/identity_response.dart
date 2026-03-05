// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The unique identifier of the update.
class IdentityResponse {
  /// The revision number of the update.
  final pulumi.Input<int> revision;
  /// The revision independent identifier of the update.
  final pulumi.Input<String> updateId;

  /// Creates a new [IdentityResponse].
  /// [revision] The revision number of the update.
  /// [updateId] The revision independent identifier of the update.
  IdentityResponse({
    required this.revision,
    required this.updateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revision': revision,
      'updateId': updateId,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      revision: pulumi.Input.fromValue(map['revision'] as int),
      updateId: pulumi.Input.fromValue(map['updateId'] as String),
    );
  }
}

