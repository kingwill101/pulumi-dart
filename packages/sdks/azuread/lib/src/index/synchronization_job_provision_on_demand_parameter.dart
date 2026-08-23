// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_provision_on_demand_parameter_subject.dart';

class SynchronizationJobProvisionOnDemandParameter {
  /// The identifier of the synchronization rule to be applied. This rule ID is defined in the schema for a given synchronization job or template.
  final pulumi.Input<String> ruleId;
  /// One or more `subject` blocks as documented below.
  final pulumi.Input<List<SynchronizationJobProvisionOnDemandParameterSubject>> subjects;

  /// Creates a new [SynchronizationJobProvisionOnDemandParameter].
  /// [ruleId] The identifier of the synchronization rule to be applied. This rule ID is defined in the schema for a given synchronization job or template.
  /// [subjects] One or more `subject` blocks as documented below.
  const SynchronizationJobProvisionOnDemandParameter({
    required this.ruleId,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
      'subjects': pulumi.Input.mapInputValue<List<SynchronizationJobProvisionOnDemandParameterSubject>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SynchronizationJobProvisionOnDemandParameterSubject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SynchronizationJobProvisionOnDemandParameter.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobProvisionOnDemandParameter(
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      subjects: pulumi.Input.fromValue(pulumi.Input.decodeList<SynchronizationJobProvisionOnDemandParameterSubject>(map['subjects']!, (value) => SynchronizationJobProvisionOnDemandParameterSubject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
