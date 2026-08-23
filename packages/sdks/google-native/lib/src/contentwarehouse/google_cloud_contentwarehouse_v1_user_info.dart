// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user information.
class GoogleCloudContentwarehouseV1UserInfo {
  /// The unique group identifications which the user is belong to. The format is "group:yyyy@example.com";
  final pulumi.Input<List<String>>? groupIds;
  /// A unique user identification string, as determined by the client. The maximum number of allowed characters is 255. Allowed characters include numbers 0 to 9, uppercase and lowercase letters, and restricted special symbols (:, @, +, -, _, ~) The format is "user:xxxx@example.com";
  final pulumi.Input<String>? id;

  /// Creates a new [GoogleCloudContentwarehouseV1UserInfo].
  /// [groupIds] The unique group identifications which the user is belong to. The format is "group:yyyy@example.com";
  /// [id] A unique user identification string, as determined by the client. The maximum number of allowed characters is 255. Allowed characters include numbers 0 to 9, uppercase and lowercase letters, and restricted special symbols (:, @, +, -, _, ~) The format is "user:xxxx@example.com";
  const GoogleCloudContentwarehouseV1UserInfo({
    this.groupIds,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': ?id,
    };
  }

  factory GoogleCloudContentwarehouseV1UserInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1UserInfo(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
