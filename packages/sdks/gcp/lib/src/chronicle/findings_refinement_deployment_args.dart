// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_deployment_detection_exclusion_application.dart';

/// {@template pulumi_chronicle_findings_refinement_deployment_findings_refinement_deployment_args_doc}
/// The set of arguments for FindingsRefinementDeployment.
/// {@endtemplate}
/// {@macro pulumi_chronicle_findings_refinement_deployment_findings_refinement_deployment_args_doc}
class FindingsRefinementDeploymentArgs {
  /// The archive state of the findings refinement deployment.
  /// Cannot be set to true unless enabled is set to false.
  /// If currently set to true, enabled cannot be updated to true.
  final pulumi.Input<bool>? archived;
  /// Describes the detectors a detection exclusion is applied to.
  /// Structure is documented below.
  final pulumi.Input<FindingsRefinementDeploymentDetectionExclusionApplication>? detectionExclusionApplication;
  /// Whether the findings refinement is currently deployed continuously against
  /// incoming findings.
  final pulumi.Input<bool>? enabled;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> findingsRefinement;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [FindingsRefinementDeploymentArgs].
  /// [archived] The archive state of the findings refinement deployment.
  /// [detectionExclusionApplication] Describes the detectors a detection exclusion is applied to.
  /// [enabled] Whether the findings refinement is currently deployed continuously against
  /// [findingsRefinement] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const FindingsRefinementDeploymentArgs({
    this.archived,
    this.detectionExclusionApplication,
    this.enabled,
    required this.findingsRefinement,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archived': ?archived,
      'detectionExclusionApplication': ?pulumi.Input.mapOptionalInputValue<FindingsRefinementDeploymentDetectionExclusionApplication, Map<String, dynamic>>(detectionExclusionApplication, (value) => value.toMap()),
      'enabled': ?enabled,
      'findingsRefinement': findingsRefinement,
      'instance': instance,
      'location': location,
      'project': ?project,
    };
  }

  factory FindingsRefinementDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementDeploymentArgs(
      archived: (() { final guardedValue = map['archived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      detectionExclusionApplication: (() { final guardedValue = map['detectionExclusionApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FindingsRefinementDeploymentDetectionExclusionApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      findingsRefinement: pulumi.Input.fromValue(map['findingsRefinement'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
