// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_host_type_beyondcorp_v1alpha.dart';
import 'app_gateway_type_beyondcorp_v1alpha.dart';

/// {@template pulumi_beyondcorp_v1alpha_app_gateway_beyondcorp_v1alpha_args_doc}
/// The set of arguments for AppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_app_gateway_beyondcorp_v1alpha_args_doc}
class AppGatewayBeyondcorpV1alphaArgs {
  /// Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appGatewayId;
  /// Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// The type of hosting used by the AppGateway.
  final pulumi.Input<AppGatewayHostTypeBeyondcorpV1alpha> hostType;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of network connectivity used by the AppGateway.
  final pulumi.Input<AppGatewayTypeBeyondcorpV1alpha> type;

  /// Creates a new [AppGatewayBeyondcorpV1alphaArgs].
  /// [appGatewayId] Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  /// [hostType] The type of hosting used by the AppGateway.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of network connectivity used by the AppGateway.
  const AppGatewayBeyondcorpV1alphaArgs({
    this.appGatewayId,
    this.displayName,
    required this.hostType,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': ?appGatewayId,
      'displayName': ?displayName,
      'hostType': pulumi.Input.mapInputValue<AppGatewayHostTypeBeyondcorpV1alpha, String>(hostType, (value) => value.wireValue),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<AppGatewayTypeBeyondcorpV1alpha, String>(type, (value) => value.wireValue),
    };
  }

  factory AppGatewayBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return AppGatewayBeyondcorpV1alphaArgs(
      appGatewayId: (() { final guardedValue = map['appGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostType: pulumi.Input.fromValue(AppGatewayHostTypeBeyondcorpV1alpha.fromValue(map['hostType']! as String)),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(AppGatewayTypeBeyondcorpV1alpha.fromValue(map['type']! as String)),
    );
  }
}
