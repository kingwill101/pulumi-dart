// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_condition.dart';
import 'unit_dependency.dart';
import 'unit_dependent.dart';
import 'unit_input_variable.dart';
import 'unit_maintenance.dart';
import 'unit_output_variable.dart';

/// Input properties used for looking up and filtering Unit resources.
class UnitState {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// A set of conditions which indicate the various conditions this resource can
  /// have.
  /// Structure is documented below.
  final pulumi.Input<List<UnitCondition>?>? conditions;
  /// The timestamp when the resource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Set of dependencies for this unit. Maximum 10.
  /// Structure is documented below.
  final pulumi.Input<List<UnitDependency>?>? dependencies;
  /// List of Units that depend on this unit. Unit can only be deprovisioned if
  /// this list is empty. Maximum 1000.
  /// Structure is documented below.
  final pulumi.Input<List<UnitDependent>?>? dependents;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Indicates the current input variables deployed by the unit
  /// Structure is documented below.
  final pulumi.Input<List<UnitInputVariable>?>? inputVariables;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  final pulumi.Input<UnitMaintenance?>? maintenance;
  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  final pulumi.Input<String?>? managementMode;
  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/units/{unit}"
  final pulumi.Input<String?>? name;
  /// List of concurrent UnitOperations that are operating on this Unit.
  final pulumi.Input<List<String>?>? ongoingOperations;
  /// Set of key/value pairs corresponding to output variables from execution of
  /// actuation templates. The variables are declared in actuation configs (e.g
  /// in helm chart or terraform) and the values are fetched and returned by the
  /// actuation engine upon completion of execution.
  /// Structure is documented below.
  final pulumi.Input<List<UnitOutputVariable>?>? outputVariables;
  /// List of pending (wait to be executed) UnitOperations for this unit.
  final pulumi.Input<List<String>?>? pendingOperations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The current Release object for this Unit.
  final pulumi.Input<String?>? release;
  /// List of scheduled UnitOperations for this unit.
  final pulumi.Input<List<String>?>? scheduledOperations;
  /// Current lifecycle state of the resource (e.g. if it's being
  /// created or ready to use).
  /// Possible values:
  /// UNIT_STATE_NOT_PROVISIONED
  /// UNIT_STATE_PROVISIONING
  /// UNIT_STATE_UPDATING
  /// UNIT_STATE_DEPROVISIONING
  /// UNIT_STATE_READY
  /// UNIT_STATE_ERROR
  final pulumi.Input<String?>? state;
  /// If set, indicates the time when the system will start removing the unit.
  final pulumi.Input<String?>? systemCleanupAt;
  /// Indicates the system managed state of the unit.
  /// Possible values:
  /// SYSTEM_MANAGED_STATE_ACTIVE
  /// SYSTEM_MANAGED_STATE_INACTIVE
  /// SYSTEM_MANAGED_STATE_DECOMMISSIONED
  final pulumi.Input<String?>? systemManagedState;
  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  final pulumi.Input<String?>? tenant;
  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  final pulumi.Input<String?>? uid;
  /// The ID value for the new unit.
  final pulumi.Input<String?>? unitId;
  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  final pulumi.Input<String?>? unitKind;
  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [UnitState].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [conditions] A set of conditions which indicate the various conditions this resource can
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dependencies] Set of dependencies for this unit. Maximum 10.
  /// [dependents] List of Units that depend on this unit. Unit can only be deprovisioned if
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [inputVariables] Indicates the current input variables deployed by the unit
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [maintenance] Captures requested directives for performing future maintenance on the
  /// [managementMode] Indicates whether the Unit life cycle is controlled
  /// [name] Identifier. The resource name (full URI of the resource) following the standard naming
  /// [ongoingOperations] List of concurrent UnitOperations that are operating on this Unit.
  /// [outputVariables] Set of key/value pairs corresponding to output variables from execution of
  /// [pendingOperations] List of pending (wait to be executed) UnitOperations for this unit.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [release] The current Release object for this Unit.
  /// [scheduledOperations] List of scheduled UnitOperations for this unit.
  /// [state] Current lifecycle state of the resource (e.g. if it's being
  /// [systemCleanupAt] If set, indicates the time when the system will start removing the unit.
  /// [systemManagedState] Indicates the system managed state of the unit.
  /// [tenant] Reference to the Saas Tenant resource this unit belongs to. This for
  /// [uid] The unique identifier of the resource. UID is unique in the time
  /// [unitId] The ID value for the new unit.
  /// [unitKind] Reference to the UnitKind this Unit belongs to. Immutable once set.
  /// [updateTime] The timestamp when the resource was last updated. Any
  const UnitState({
    this.annotations,
    this.conditions,
    this.createTime,
    this.deletionPolicy,
    this.dependencies,
    this.dependents,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.inputVariables,
    this.labels,
    this.location,
    this.maintenance,
    this.managementMode,
    this.name,
    this.ongoingOperations,
    this.outputVariables,
    this.pendingOperations,
    this.project,
    this.pulumiLabels,
    this.release,
    this.scheduledOperations,
    this.state,
    this.systemCleanupAt,
    this.systemManagedState,
    this.tenant,
    this.uid,
    this.unitId,
    this.unitKind,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<UnitCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<UnitCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'dependencies': ?pulumi.Input.mapOptionalInputValue<List<UnitDependency>, List<Map<String, dynamic>>>(dependencies, (value) => pulumi.Input.encodeList<UnitDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dependents': ?pulumi.Input.mapOptionalInputValue<List<UnitDependent>, List<Map<String, dynamic>>>(dependents, (value) => pulumi.Input.encodeList<UnitDependent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<UnitInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<UnitInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'maintenance': ?pulumi.Input.mapOptionalInputValue<UnitMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'managementMode': ?managementMode,
      'name': ?name,
      'ongoingOperations': ?ongoingOperations,
      'outputVariables': ?pulumi.Input.mapOptionalInputValue<List<UnitOutputVariable>, List<Map<String, dynamic>>>(outputVariables, (value) => pulumi.Input.encodeList<UnitOutputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pendingOperations': ?pendingOperations,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'release': ?release,
      'scheduledOperations': ?scheduledOperations,
      'state': ?state,
      'systemCleanupAt': ?systemCleanupAt,
      'systemManagedState': ?systemManagedState,
      'tenant': ?tenant,
      'uid': ?uid,
      'unitId': ?unitId,
      'unitKind': ?unitKind,
      'updateTime': ?updateTime,
    };
  }

  factory UnitState.fromMap(Map<String, dynamic> map) {
    return UnitState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitCondition>(guardedValue, (value) => UnitCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitDependency>(guardedValue, (value) => UnitDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dependents: (() { final guardedValue = map['dependents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitDependent>(guardedValue, (value) => UnitDependent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      inputVariables: (() { final guardedValue = map['inputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitInputVariable>(guardedValue, (value) => UnitInputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenance: (() { final guardedValue = map['maintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementMode: (() { final guardedValue = map['managementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ongoingOperations: (() { final guardedValue = map['ongoingOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputVariables: (() { final guardedValue = map['outputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitOutputVariable>(guardedValue, (value) => UnitOutputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pendingOperations: (() { final guardedValue = map['pendingOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledOperations: (() { final guardedValue = map['scheduledOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCleanupAt: (() { final guardedValue = map['systemCleanupAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemManagedState: (() { final guardedValue = map['systemManagedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitId: (() { final guardedValue = map['unitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitKind: (() { final guardedValue = map['unitKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
