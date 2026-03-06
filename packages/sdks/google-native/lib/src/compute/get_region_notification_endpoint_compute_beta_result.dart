// ignore_for_file: unused_element, unnecessary_cast

import 'notification_endpoint_grpc_settings_response_compute_beta.dart';

/// Result data returned by getRegionNotificationEndpoint.
class GetRegionNotificationEndpointComputeBetaResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  final NotificationEndpointGrpcSettingsResponseComputeBeta grpcSettings;
  /// Type of the resource. Always compute#notificationEndpoint for notification endpoints.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// URL of the region where the notification endpoint resides. This field applies only to the regional resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;

  /// Creates a new [GetRegionNotificationEndpointComputeBetaResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcSettings] Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  /// [kind] Type of the resource. Always compute#notificationEndpoint for notification endpoints.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [region] URL of the region where the notification endpoint resides. This field applies only to the regional resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  const GetRegionNotificationEndpointComputeBetaResult({
    required this.creationTimestamp,
    required this.description,
    required this.grpcSettings,
    required this.kind,
    required this.name,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'grpcSettings': grpcSettings.toMap(),
      'kind': kind,
      'name': name,
      'region': region,
      'selfLink': selfLink,
    };
  }

  factory GetRegionNotificationEndpointComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointComputeBetaResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      grpcSettings: NotificationEndpointGrpcSettingsResponseComputeBeta.fromMap((map['grpcSettings']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

