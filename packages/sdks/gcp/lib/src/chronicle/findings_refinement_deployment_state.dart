// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_deployment_detection_exclusion_application.dart';

/// Input properties used for looking up and filtering FindingsRefinementDeployment resources.
class FindingsRefinementDeploymentState {
  /// The archive state of the findings refinement deployment.
  /// Cannot be set to true unless enabled is set to false.
  /// If currently set to true, enabled cannot be updated to true.
  final pulumi.Input<bool?>? archived;
  /// Describes the detectors a detection exclusion is applied to.
  /// Structure is documented below.
  final pulumi.Input<FindingsRefinementDeploymentDetectionExclusionApplication?>? detectionExclusionApplication;
  /// Whether the findings refinement is currently deployed continuously against
  /// incoming findings.
  final pulumi.Input<bool?>? enabled;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? findingsRefinement;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The resource name of the findings refinement deployment.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}/deployment
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The timestamp when the findings refinement deployment was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [FindingsRefinementDeploymentState].
  /// [archived] The archive state of the findings refinement deployment.
  /// [detectionExclusionApplication] Describes the detectors a detection exclusion is applied to.
  /// [enabled] Whether the findings refinement is currently deployed continuously against
  /// [findingsRefinement] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The resource name of the findings refinement deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The timestamp when the findings refinement deployment was last updated.
  const FindingsRefinementDeploymentState({
    this.archived,
    this.detectionExclusionApplication,
    this.enabled,
    this.findingsRefinement,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archived': ?archived,
      'detectionExclusionApplication': ?pulumi.Input.mapOptionalInputValue<FindingsRefinementDeploymentDetectionExclusionApplication, Map<String, dynamic>>(detectionExclusionApplication, (value) => value.toMap()),
      'enabled': ?enabled,
      'findingsRefinement': ?findingsRefinement,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory FindingsRefinementDeploymentState.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementDeploymentState(
      archived: (() { final guardedValue = map['archived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      detectionExclusionApplication: (() { final guardedValue = map['detectionExclusionApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FindingsRefinementDeploymentDetectionExclusionApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      findingsRefinement: (() { final guardedValue = map['findingsRefinement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
