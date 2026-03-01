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
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A set of conditions which indicate the various conditions this resource can
  /// have.
  /// Structure is documented below.
  final pulumi.Input<List<UnitCondition>>? conditions;
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Set of dependencies for this unit. Maximum 10.
  /// Structure is documented below.
  final pulumi.Input<List<UnitDependency>>? dependencies;
  /// List of Units that depend on this unit. Unit can only be deprovisioned if
  /// this list is empty. Maximum 1000.
  /// Structure is documented below.
  final pulumi.Input<List<UnitDependent>>? dependents;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Indicates the current input variables deployed by the unit
  /// Structure is documented below.
  final pulumi.Input<List<UnitInputVariable>>? inputVariables;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  final pulumi.Input<UnitMaintenance>? maintenance;
  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  final pulumi.Input<String>? managementMode;
  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/units/{unit}"
  final pulumi.Input<String>? name;
  /// List of concurrent UnitOperations that are operating on this Unit.
  final pulumi.Input<List<String>>? ongoingOperations;
  final pulumi.Input<List<UnitOutputVariable>>? outputVariables;
  /// List of pending (wait to be executed) UnitOperations for this unit.
  final pulumi.Input<List<String>>? pendingOperations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current Release object for this Unit.
  final pulumi.Input<String>? release;
  /// List of scheduled UnitOperations for this unit.
  final pulumi.Input<List<String>>? scheduledOperations;
  /// Current lifecycle state of the resource (e.g. if it's being
  /// created or ready to use).
  /// Possible values:
  /// UNIT_STATE_NOT_PROVISIONED
  /// UNIT_STATE_PROVISIONING
  /// UNIT_STATE_UPDATING
  /// UNIT_STATE_DEPROVISIONING
  /// UNIT_STATE_READY
  /// UNIT_STATE_ERROR
  final pulumi.Input<String>? state;
  /// If set, indicates the time when the system will start removing the unit.
  final pulumi.Input<String>? systemCleanupAt;
  /// Indicates the system managed state of the unit.
  /// Possible values:
  /// SYSTEM_MANAGED_STATE_ACTIVE
  /// SYSTEM_MANAGED_STATE_INACTIVE
  /// SYSTEM_MANAGED_STATE_DECOMMISSIONED
  final pulumi.Input<String>? systemManagedState;
  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  final pulumi.Input<String>? tenant;
  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  final pulumi.Input<String>? uid;
  /// The ID value for the new unit.
  final pulumi.Input<String>? unitId;
  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  final pulumi.Input<String>? unitKind;
  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [UnitState].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [conditions] A set of conditions which indicate the various conditions this resource can
  /// [createTime] The timestamp when the resource was created.
  /// [dependencies] Set of dependencies for this unit. Maximum 10.
  /// [dependents] List of Units that depend on this unit. Unit can only be deprovisioned if
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [inputVariables] Indicates the current input variables deployed by the unit
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [maintenance] Captures requested directives for performing future maintenance on the
  /// [managementMode] Indicates whether the Unit life cycle is controlled
  /// [name] Identifier. The resource name (full URI of the resource) following the standard naming
  /// [ongoingOperations] List of concurrent UnitOperations that are operating on this Unit.
  /// [outputVariables] Optional.
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
  UnitState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<List<UnitCondition>>? conditions,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<UnitDependency>>? dependencies,
    pulumi.Output<List<UnitDependent>>? dependents,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<UnitInputVariable>>? inputVariables,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<UnitMaintenance>? maintenance,
    pulumi.Output<String>? managementMode,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? ongoingOperations,
    pulumi.Output<List<UnitOutputVariable>>? outputVariables,
    pulumi.Output<List<String>>? pendingOperations,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? release,
    pulumi.Output<List<String>>? scheduledOperations,
    pulumi.Output<String>? state,
    pulumi.Output<String>? systemCleanupAt,
    pulumi.Output<String>? systemManagedState,
    pulumi.Output<String>? tenant,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? unitId,
    pulumi.Output<String>? unitKind,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      conditions = pulumi.Input.asOptionalInput<List<UnitCondition>>(conditions),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dependencies = pulumi.Input.asOptionalInput<List<UnitDependency>>(dependencies),
      dependents = pulumi.Input.asOptionalInput<List<UnitDependent>>(dependents),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      inputVariables = pulumi.Input.asOptionalInput<List<UnitInputVariable>>(inputVariables),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenance = pulumi.Input.asOptionalInput<UnitMaintenance>(maintenance),
      managementMode = pulumi.Input.asOptionalInput<String>(managementMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      ongoingOperations = pulumi.Input.asOptionalInput<List<String>>(ongoingOperations),
      outputVariables = pulumi.Input.asOptionalInput<List<UnitOutputVariable>>(outputVariables),
      pendingOperations = pulumi.Input.asOptionalInput<List<String>>(pendingOperations),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      release = pulumi.Input.asOptionalInput<String>(release),
      scheduledOperations = pulumi.Input.asOptionalInput<List<String>>(scheduledOperations),
      state = pulumi.Input.asOptionalInput<String>(state),
      systemCleanupAt = pulumi.Input.asOptionalInput<String>(systemCleanupAt),
      systemManagedState = pulumi.Input.asOptionalInput<String>(systemManagedState),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      unitId = pulumi.Input.asOptionalInput<String>(unitId),
      unitKind = pulumi.Input.asOptionalInput<String>(unitKind),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<UnitCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<UnitCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<UnitCondition>>(pulumi.Input.decodeList<UnitCondition>(map['conditions'], (value) => UnitCondition.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dependencies: map['dependencies'] == null ? null : pulumi.Output.create<List<UnitDependency>>(pulumi.Input.decodeList<UnitDependency>(map['dependencies'], (value) => UnitDependency.fromMap((value as Map).cast<String, dynamic>()))),
      dependents: map['dependents'] == null ? null : pulumi.Output.create<List<UnitDependent>>(pulumi.Input.decodeList<UnitDependent>(map['dependents'], (value) => UnitDependent.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      inputVariables: map['inputVariables'] == null ? null : pulumi.Output.create<List<UnitInputVariable>>(pulumi.Input.decodeList<UnitInputVariable>(map['inputVariables'], (value) => UnitInputVariable.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenance: map['maintenance'] == null ? null : pulumi.Output.create<UnitMaintenance>(UnitMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>())),
      managementMode: map['managementMode'] == null ? null : pulumi.Output.create<String>(map['managementMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ongoingOperations: map['ongoingOperations'] == null ? null : pulumi.Output.create<List<String>>((map['ongoingOperations'] as List).cast<String>()),
      outputVariables: map['outputVariables'] == null ? null : pulumi.Output.create<List<UnitOutputVariable>>(pulumi.Input.decodeList<UnitOutputVariable>(map['outputVariables'], (value) => UnitOutputVariable.fromMap((value as Map).cast<String, dynamic>()))),
      pendingOperations: map['pendingOperations'] == null ? null : pulumi.Output.create<List<String>>((map['pendingOperations'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      release: map['release'] == null ? null : pulumi.Output.create<String>(map['release'] as String),
      scheduledOperations: map['scheduledOperations'] == null ? null : pulumi.Output.create<List<String>>((map['scheduledOperations'] as List).cast<String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      systemCleanupAt: map['systemCleanupAt'] == null ? null : pulumi.Output.create<String>(map['systemCleanupAt'] as String),
      systemManagedState: map['systemManagedState'] == null ? null : pulumi.Output.create<String>(map['systemManagedState'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      unitId: map['unitId'] == null ? null : pulumi.Output.create<String>(map['unitId'] as String),
      unitKind: map['unitKind'] == null ? null : pulumi.Output.create<String>(map['unitKind'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

