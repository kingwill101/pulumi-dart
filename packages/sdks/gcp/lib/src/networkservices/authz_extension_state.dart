// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthzExtension resources.
class AuthzExtensionState {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  final pulumi.Input<String>? authority;
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to FALSE or the default setting of FALSE is used, one of the following happens:
  /// * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer.
  /// * If response headers have been delivered, then the HTTP stream to the downstream client is reset.
  final pulumi.Input<bool>? failOpen;
  /// List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  final pulumi.Input<List<String>>? forwardHeaders;
  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Required when the service points to a backend service. All backend services and forwarding rules referenced by
  /// this extension must share the same load balancing scheme. For more information, refer to
  /// [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The metadata provided here is included as part of the metadataContext (of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.&lt;resourceName&gt;. The following variables are supported in the metadata Struct:
  /// {forwarding_rule_id} - substituted with the forwarding rule's fully qualified resource name.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Identifier. Name of the AuthzExtension resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The service that runs the extension.
  /// The following values and formats are accepted:
  /// * `iap.googleapis.com` when the policyProfile is set to REQUEST_AUTHZ
  /// * `modelarmor.{{region}}.rep.googleapis.com` when the policyProfile is set to CONTENT_AUTHZ
  /// * A fully qualified domain name that can be resolved by the dataplane
  /// * Backend service resource URI of the form `https://www.googleapis.com/compute/v1/projects/{{project}}/regions/{{region}}/backendServices/{{name}}` or `https://www.googleapis.com/compute/v1/projects/{{project}}/global/backendServices/{{name}}}}`
  final pulumi.Input<String>? service;
  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  final pulumi.Input<String>? timeout;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String>? updateTime;
  /// The format of communication supported by the callout extension. Applicable only when the policyProfile is REQUEST_AUTHZ.
  /// This field is supported only for regional AuthzExtension resources. If not specified, the default value
  /// EXT_PROC_GRPC is used. Global AuthzExtension resources use the EXT_PROC_GRPC wire format.
  /// Supported values:
  /// - WIRE_FORMAT_UNSPECIFIED:
  /// No wire format is explicitly specified. The backend automatically
  /// defaults this value to EXT_PROC_GRPC.
  /// - EXT_PROC_GRPC:
  /// Uses Envoy's External Processing (ext_proc) gRPC API over a single
  /// gRPC stream. The backend service must support HTTP/2 or H2C.
  /// All supported events for a client request are sent over the same
  /// gRPC stream. This is the default wire format.
  /// - EXT_AUTHZ_GRPC:
  /// Uses Envoy's external authorization (ext_authz) gRPC API.
  /// The backend service must support HTTP/2 or H2C.
  /// This option is only supported for regional AuthzExtension resources.
  /// Possible values are: `WIRE_FORMAT_UNSPECIFIED`, `EXT_PROC_GRPC`, `EXT_AUTHZ_GRPC`.
  final pulumi.Input<String>? wireFormat;

  /// Creates a new [AuthzExtensionState].
  /// [authority] The :authority header in the gRPC request sent from Envoy to the extension service.
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [failOpen] Determines how the proxy behaves if the call to the extension fails or times out.
  /// [forwardHeaders] List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  /// [labels] Set of labels associated with the AuthzExtension resource.
  /// [loadBalancingScheme] Required when the service points to a backend service. All backend services and forwarding rules referenced by
  /// [location] The location of the resource.
  /// [metadata] The metadata provided here is included as part of the metadataContext (of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.&lt;resourceName&gt;. The following variables are supported in the metadata Struct:
  /// [name] Identifier. Name of the AuthzExtension resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [service] The service that runs the extension.
  /// [timeout] Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  /// [updateTime] The timestamp when the resource was updated.
  /// [wireFormat] The format of communication supported by the callout extension. Applicable only when the policyProfile is REQUEST_AUTHZ.
  const AuthzExtensionState({
    this.authority,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.failOpen,
    this.forwardHeaders,
    this.labels,
    this.loadBalancingScheme,
    this.location,
    this.metadata,
    this.name,
    this.project,
    this.pulumiLabels,
    this.service,
    this.timeout,
    this.updateTime,
    this.wireFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'failOpen': ?failOpen,
      'forwardHeaders': ?forwardHeaders,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'service': ?service,
      'timeout': ?timeout,
      'updateTime': ?updateTime,
      'wireFormat': ?wireFormat,
    };
  }

  factory AuthzExtensionState.fromMap(Map<String, dynamic> map) {
    return AuthzExtensionState(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardHeaders: (() { final guardedValue = map['forwardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wireFormat: (() { final guardedValue = map['wireFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
