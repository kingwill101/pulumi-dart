// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustNetworkHostnameRouteFilter {
  /// If set, only list hostname routes with the given comment.
  final pulumi.Input<String?>? comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  /// If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  final pulumi.Input<String?>? hostname;
  /// The hostname route ID.
  final pulumi.Input<String?>? id;
  /// If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  final pulumi.Input<bool> isDeleted;
  /// If set, only list hostname routes that point to a specific tunnel.
  final pulumi.Input<String?>? tunnelId;

  /// Creates a new [GetZeroTrustNetworkHostnameRouteFilter].
  /// [comment] If set, only list hostname routes with the given comment.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [hostname] If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  /// [id] The hostname route ID.
  /// [isDeleted] If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  /// [tunnelId] If set, only list hostname routes that point to a specific tunnel.
  const GetZeroTrustNetworkHostnameRouteFilter({
    this.comment,
    this.existedAt,
    this.hostname,
    this.id,
    required this.isDeleted,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'existedAt': ?existedAt,
      'hostname': ?hostname,
      'id': ?id,
      'isDeleted': isDeleted,
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustNetworkHostnameRouteFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRouteFilter(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: pulumi.Input.fromValue(map['isDeleted'] as bool),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
