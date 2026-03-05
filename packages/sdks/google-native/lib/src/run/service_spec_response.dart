// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_template_response.dart';
import 'traffic_target_response.dart';

/// ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).
class ServiceSpecResponse {
  /// Holds the latest specification for the Revision to be stamped out.
  final pulumi.Input<RevisionTemplateResponse> template;
  /// Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  final pulumi.Input<List<TrafficTargetResponse>> traffic;

  /// Creates a new [ServiceSpecResponse].
  /// [template] Holds the latest specification for the Revision to be stamped out.
  /// [traffic] Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  ServiceSpecResponse({
    required this.template,
    required this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template': pulumi.Input.mapInputValue<RevisionTemplateResponse, Map<String, dynamic>>(template, (value) => value.toMap()),
      'traffic': pulumi.Input.mapInputValue<List<TrafficTargetResponse>, List<Map<String, dynamic>>>(traffic, (value) => pulumi.Input.encodeList<TrafficTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceSpecResponse.fromMap(Map<String, dynamic> map) {
    return ServiceSpecResponse(
      template: pulumi.Input.fromValue(RevisionTemplateResponse.fromMap((map['template']! as Map).cast<String, dynamic>())),
      traffic: pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficTargetResponse>(map['traffic']!, (value) => TrafficTargetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

