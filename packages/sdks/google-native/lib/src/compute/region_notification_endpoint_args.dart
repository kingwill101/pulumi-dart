// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint_grpc_settings.dart';

/// {@template pulumi_compute_alpha_region_notification_endpoint_args_doc}
/// The set of arguments for RegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_region_notification_endpoint_args_doc}
class RegionNotificationEndpointArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  final pulumi.Input<NotificationEndpointGrpcSettings>? grpcSettings;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [RegionNotificationEndpointArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcSettings] Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  RegionNotificationEndpointArgs({
    pulumi.Output<String>? description,
    pulumi.Output<NotificationEndpointGrpcSettings>? grpcSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      grpcSettings = pulumi.Input.asOptionalInput<NotificationEndpointGrpcSettings>(grpcSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'grpcSettings': ?pulumi.Input.mapOptionalInputValue<NotificationEndpointGrpcSettings, Map<String, dynamic>>(grpcSettings, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory RegionNotificationEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RegionNotificationEndpointArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      grpcSettings: map['grpcSettings'] == null ? null : pulumi.Output.create<NotificationEndpointGrpcSettings>(NotificationEndpointGrpcSettings.fromMap((map['grpcSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

