// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_template.dart';
import 'traffic_target.dart';

/// ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).
class ServiceSpec {
  /// Holds the latest specification for the Revision to be stamped out.
  final pulumi.Input<RevisionTemplate>? template;
  /// Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  final pulumi.Input<List<TrafficTarget>>? traffic;

  /// Creates a new [ServiceSpec].
  /// [template] Holds the latest specification for the Revision to be stamped out.
  /// [traffic] Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  const ServiceSpec({
    this.template,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template': ?pulumi.Input.mapOptionalInputValue<RevisionTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'traffic': ?pulumi.Input.mapOptionalInputValue<List<TrafficTarget>, List<Map<String, dynamic>>>(traffic, (value) => pulumi.Input.encodeList<TrafficTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceSpec.fromMap(Map<String, dynamic> map) {
    return ServiceSpec(
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficTarget>(guardedValue, (value) => TrafficTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
