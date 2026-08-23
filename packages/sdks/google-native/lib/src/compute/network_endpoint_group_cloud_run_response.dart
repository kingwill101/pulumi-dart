// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Cloud Run network endpoint group (NEG). The service must be provided explicitly or in the URL mask. The tag is optional, may be provided explicitly or in the URL mask. Note: Cloud Run service must be in the same project and located in the same region as the Serverless NEG.
class NetworkEndpointGroupCloudRunResponse {
  /// Cloud Run service is the main resource of Cloud Run. The service must be 1-63 characters long, and comply with RFC1035. Example value: "run-service".
  final pulumi.Input<String> service;
  /// Optional Cloud Run tag represents the "named-revision" to provide additional fine-grained traffic routing information. The tag must be 1-63 characters long, and comply with RFC1035. Example value: "revision-0010".
  final pulumi.Input<String> tag;
  /// A template to parse &lt;service&gt; and &lt;tag&gt; fields from a request URL. URL mask allows for routing to multiple Run services without having to create multiple network endpoint groups and backend services. For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2" can be backed by the same Serverless Network Endpoint Group (NEG) with URL mask "&lt;tag&gt;.domain.com/&lt;service&gt;". The URL mask will parse them to { service="bar1", tag="foo1" } and { service="bar2", tag="foo2" } respectively.
  final pulumi.Input<String> urlMask;

  /// Creates a new [NetworkEndpointGroupCloudRunResponse].
  /// [service] Cloud Run service is the main resource of Cloud Run. The service must be 1-63 characters long, and comply with RFC1035. Example value: "run-service".
  /// [tag] Optional Cloud Run tag represents the "named-revision" to provide additional fine-grained traffic routing information. The tag must be 1-63 characters long, and comply with RFC1035. Example value: "revision-0010".
  /// [urlMask] A template to parse &lt;service&gt; and &lt;tag&gt; fields from a request URL. URL mask allows for routing to multiple Run services without having to create multiple network endpoint groups and backend services. For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2" can be backed by the same Serverless Network Endpoint Group (NEG) with URL mask "&lt;tag&gt;.domain.com/&lt;service&gt;". The URL mask will parse them to { service="bar1", tag="foo1" } and { service="bar2", tag="foo2" } respectively.
  const NetworkEndpointGroupCloudRunResponse({
    required this.service,
    required this.tag,
    required this.urlMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
      'tag': tag,
      'urlMask': urlMask,
    };
  }

  factory NetworkEndpointGroupCloudRunResponse.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupCloudRunResponse(
      service: pulumi.Input.fromValue(map['service'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      urlMask: pulumi.Input.fromValue(map['urlMask'] as String),
    );
  }
}
