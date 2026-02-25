// This is a generated file - do not edit.
//
// Generated from pulumi/resource_status.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $2;

import 'provider.pb.dart' as $1;
import 'resource_status.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'resource_status.pbenum.dart';

/// `PublishViewStepsRequest` is the type of requests sent as part of a
/// [](pulumirpc.ResourceStatus.PublishViewSteps) call.
class PublishViewStepsRequest extends $pb.GeneratedMessage {
  factory PublishViewStepsRequest({
    $core.String? token,
    $core.Iterable<ViewStep>? steps,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (steps != null) result.steps.addAll(steps);
    return result;
  }

  PublishViewStepsRequest._();

  factory PublishViewStepsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PublishViewStepsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PublishViewStepsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..pPM<ViewStep>(2, _omitFieldNames ? '' : 'steps',
        subBuilder: ViewStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishViewStepsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishViewStepsRequest copyWith(
          void Function(PublishViewStepsRequest) updates) =>
      super.copyWith((message) => updates(message as PublishViewStepsRequest))
          as PublishViewStepsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishViewStepsRequest create() => PublishViewStepsRequest._();
  @$core.override
  PublishViewStepsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PublishViewStepsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishViewStepsRequest>(create);
  static PublishViewStepsRequest? _defaultInstance;

  /// The service context token.
  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  /// The steps to publish.
  @$pb.TagNumber(2)
  $pb.PbList<ViewStep> get steps => $_getList(1);
}

/// `PublishViewStepsResponse` is the type of responses sent as part of a
/// [](pulumirpc.ResourceStatus.PublishViewSteps) call.
class PublishViewStepsResponse extends $pb.GeneratedMessage {
  factory PublishViewStepsResponse() => create();

  PublishViewStepsResponse._();

  factory PublishViewStepsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PublishViewStepsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PublishViewStepsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishViewStepsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishViewStepsResponse copyWith(
          void Function(PublishViewStepsResponse) updates) =>
      super.copyWith((message) => updates(message as PublishViewStepsResponse))
          as PublishViewStepsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishViewStepsResponse create() => PublishViewStepsResponse._();
  @$core.override
  PublishViewStepsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PublishViewStepsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishViewStepsResponse>(create);
  static PublishViewStepsResponse? _defaultInstance;
}

/// `ViewStep` represents a deployment operation step for a view resource.
class ViewStep extends $pb.GeneratedMessage {
  factory ViewStep({
    ViewStep_Status? status,
    $core.String? error,
    ViewStep_Op? op,
    $core.String? type,
    $core.String? name,
    ViewStepState? old,
    ViewStepState? new_7,
    $core.Iterable<$core.String>? keys,
    $core.Iterable<$core.String>? diffs,
    $core.Iterable<$core.MapEntry<$core.String, $1.PropertyDiff>>? detailedDiff,
    $core.bool? hasDetailedDiff,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (error != null) result.error = error;
    if (op != null) result.op = op;
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (old != null) result.old = old;
    if (new_7 != null) result.new_7 = new_7;
    if (keys != null) result.keys.addAll(keys);
    if (diffs != null) result.diffs.addAll(diffs);
    if (detailedDiff != null) result.detailedDiff.addEntries(detailedDiff);
    if (hasDetailedDiff != null) result.hasDetailedDiff = hasDetailedDiff;
    return result;
  }

  ViewStep._();

  factory ViewStep.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ViewStep.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ViewStep',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aE<ViewStep_Status>(1, _omitFieldNames ? '' : 'status',
        enumValues: ViewStep_Status.values)
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..aE<ViewStep_Op>(3, _omitFieldNames ? '' : 'op',
        enumValues: ViewStep_Op.values)
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOM<ViewStepState>(6, _omitFieldNames ? '' : 'old',
        subBuilder: ViewStepState.create)
    ..aOM<ViewStepState>(7, _omitFieldNames ? '' : 'new',
        subBuilder: ViewStepState.create)
    ..pPS(8, _omitFieldNames ? '' : 'keys')
    ..pPS(9, _omitFieldNames ? '' : 'diffs')
    ..m<$core.String, $1.PropertyDiff>(
        10, _omitFieldNames ? '' : 'detailedDiff',
        entryClassName: 'ViewStep.DetailedDiffEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.PropertyDiff.create,
        valueDefaultOrMaker: $1.PropertyDiff.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(11, _omitFieldNames ? '' : 'hasDetailedDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ViewStep clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ViewStep copyWith(void Function(ViewStep) updates) =>
      super.copyWith((message) => updates(message as ViewStep)) as ViewStep;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ViewStep create() => ViewStep._();
  @$core.override
  ViewStep createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ViewStep getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ViewStep>(create);
  static ViewStep? _defaultInstance;

  /// The status of the operation.
  @$pb.TagNumber(1)
  ViewStep_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ViewStep_Status value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// An optional error message indicating the operation failed.
  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);

  /// The operation being performed.
  @$pb.TagNumber(3)
  ViewStep_Op get op => $_getN(2);
  @$pb.TagNumber(3)
  set op(ViewStep_Op value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => $_clearField(3);

  /// The type of the view resource.
  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  /// The name of the view resource.
  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  /// The state of the view resource before performing the step.
  @$pb.TagNumber(6)
  ViewStepState get old => $_getN(5);
  @$pb.TagNumber(6)
  set old(ViewStepState value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOld() => $_has(5);
  @$pb.TagNumber(6)
  void clearOld() => $_clearField(6);
  @$pb.TagNumber(6)
  ViewStepState ensureOld() => $_ensure(5);

  /// The state of the view resource after performing the step.
  @$pb.TagNumber(7)
  ViewStepState get new_7 => $_getN(6);
  @$pb.TagNumber(7)
  set new_7(ViewStepState value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasNew_7() => $_has(6);
  @$pb.TagNumber(7)
  void clearNew_7() => $_clearField(7);
  @$pb.TagNumber(7)
  ViewStepState ensureNew_7() => $_ensure(6);

  /// The keys causing a replacement (only applicable for "create" and "replace" ops).
  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get keys => $_getList(7);

  /// The keys that changed with this step.
  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get diffs => $_getList(8);

  /// A detailed diff is a map from [property paths](property-paths) to [](pulumirpc.PropertyDiff)s,
  /// which describe the kind of change that occurred to the property located at that path.
  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $1.PropertyDiff> get detailedDiff => $_getMap(9);

  /// Whether the detailed diff is present.
  @$pb.TagNumber(11)
  $core.bool get hasDetailedDiff => $_getBF(10);
  @$pb.TagNumber(11)
  set hasDetailedDiff($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHasDetailedDiff() => $_has(10);
  @$pb.TagNumber(11)
  void clearHasDetailedDiff() => $_clearField(11);
}

/// `ViewStepState` represents the state of a view resource.
class ViewStepState extends $pb.GeneratedMessage {
  factory ViewStepState({
    $core.String? type,
    $core.String? name,
    $core.String? parentType,
    $core.String? parentName,
    $2.Struct? inputs,
    $2.Struct? outputs,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (parentType != null) result.parentType = parentType;
    if (parentName != null) result.parentName = parentName;
    if (inputs != null) result.inputs = inputs;
    if (outputs != null) result.outputs = outputs;
    return result;
  }

  ViewStepState._();

  factory ViewStepState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ViewStepState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ViewStepState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'parentType')
    ..aOS(4, _omitFieldNames ? '' : 'parentName')
    ..aOM<$2.Struct>(5, _omitFieldNames ? '' : 'inputs',
        subBuilder: $2.Struct.create)
    ..aOM<$2.Struct>(6, _omitFieldNames ? '' : 'outputs',
        subBuilder: $2.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ViewStepState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ViewStepState copyWith(void Function(ViewStepState) updates) =>
      super.copyWith((message) => updates(message as ViewStepState))
          as ViewStepState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ViewStepState create() => ViewStepState._();
  @$core.override
  ViewStepState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ViewStepState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ViewStepState>(create);
  static ViewStepState? _defaultInstance;

  /// The type of the view resource.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// The name of the view resource.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// An optional type of the parent view resource. By default, a view resource will
  /// be a child of the owning resource, but views can be nested within other views,
  /// as long as they're all under the same owner. Both parent_type and parent_name
  /// must be set together.
  @$pb.TagNumber(3)
  $core.String get parentType => $_getSZ(2);
  @$pb.TagNumber(3)
  set parentType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasParentType() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentType() => $_clearField(3);

  /// An optional name of the parent view resource. By default, a view resource will
  /// be a child of the owning resource, but views can be nested within other views,
  /// as long as they're all under the same owner. Both parent_type and parent_name
  /// must be set together.
  @$pb.TagNumber(4)
  $core.String get parentName => $_getSZ(3);
  @$pb.TagNumber(4)
  set parentName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasParentName() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentName() => $_clearField(4);

  /// The view resource's inputs.
  @$pb.TagNumber(5)
  $2.Struct get inputs => $_getN(4);
  @$pb.TagNumber(5)
  set inputs($2.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Struct ensureInputs() => $_ensure(4);

  /// The view resource's outputs.
  @$pb.TagNumber(6)
  $2.Struct get outputs => $_getN(5);
  @$pb.TagNumber(6)
  set outputs($2.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOutputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOutputs() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.Struct ensureOutputs() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
