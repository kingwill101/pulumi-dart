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

/// Represents the kind of operation performed by a step.
class ViewStep_Op extends $pb.ProtobufEnum {
  /// An unspecified operation.
  static const ViewStep_Op UNSPECIFIED =
      ViewStep_Op._(0, _omitEnumNames ? '' : 'UNSPECIFIED');

  /// Nothing to do.
  static const ViewStep_Op SAME =
      ViewStep_Op._(1, _omitEnumNames ? '' : 'SAME');

  /// Creating a new resource.
  static const ViewStep_Op CREATE =
      ViewStep_Op._(2, _omitEnumNames ? '' : 'CREATE');

  /// Updating an existing resource.
  static const ViewStep_Op UPDATE =
      ViewStep_Op._(3, _omitEnumNames ? '' : 'UPDATE');

  /// Deleting an existing resource.
  static const ViewStep_Op DELETE =
      ViewStep_Op._(4, _omitEnumNames ? '' : 'DELETE');

  /// Replacing a resource with a new one.
  static const ViewStep_Op REPLACE =
      ViewStep_Op._(5, _omitEnumNames ? '' : 'REPLACE');

  /// Creating a new resource for a replacement.
  static const ViewStep_Op CREATE_REPLACEMENT =
      ViewStep_Op._(6, _omitEnumNames ? '' : 'CREATE_REPLACEMENT');

  /// Deleting an existing resource after replacement.
  static const ViewStep_Op DELETE_REPLACED =
      ViewStep_Op._(7, _omitEnumNames ? '' : 'DELETE_REPLACED');

  /// Reading an existing resource.
  static const ViewStep_Op READ =
      ViewStep_Op._(8, _omitEnumNames ? '' : 'READ');

  /// Reading an existing resource for a replacement.
  static const ViewStep_Op READ_REPLACEMENT =
      ViewStep_Op._(9, _omitEnumNames ? '' : 'READ_REPLACEMENT');

  /// Refreshing an existing resource.
  static const ViewStep_Op REFRESH =
      ViewStep_Op._(10, _omitEnumNames ? '' : 'REFRESH');

  /// Removing a resource that was read.
  static const ViewStep_Op READ_DISCARD =
      ViewStep_Op._(11, _omitEnumNames ? '' : 'READ_DISCARD');

  /// Discarding a read resource that was replaced.
  static const ViewStep_Op DISCARD_REPLACED =
      ViewStep_Op._(12, _omitEnumNames ? '' : 'DISCARD_REPLACED');

  /// Removing a pending replace resource.
  static const ViewStep_Op REMOVE_PENDING_REPLACE =
      ViewStep_Op._(13, _omitEnumNames ? '' : 'REMOVE_PENDING_REPLACE');

  /// Import an existing resource.
  static const ViewStep_Op IMPORT =
      ViewStep_Op._(14, _omitEnumNames ? '' : 'IMPORT');

  /// Replace an existing resource.
  static const ViewStep_Op IMPORT_REPLACEMENT =
      ViewStep_Op._(15, _omitEnumNames ? '' : 'IMPORT_REPLACEMENT');

  static const $core.List<ViewStep_Op> values = <ViewStep_Op>[
    UNSPECIFIED,
    SAME,
    CREATE,
    UPDATE,
    DELETE,
    REPLACE,
    CREATE_REPLACEMENT,
    DELETE_REPLACED,
    READ,
    READ_REPLACEMENT,
    REFRESH,
    READ_DISCARD,
    DISCARD_REPLACED,
    REMOVE_PENDING_REPLACE,
    IMPORT,
    IMPORT_REPLACEMENT,
  ];

  static final $core.List<ViewStep_Op?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 15);
  static ViewStep_Op? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ViewStep_Op._(super.value, super.name);
}

/// Status is returned when an error has occurred during a resource provider operation.
/// It indicates whether the operation could be rolled back cleanly (OK). If not, it
/// means the resource was left in an indeterminate state.
class ViewStep_Status extends $pb.ProtobufEnum {
  static const ViewStep_Status OK =
      ViewStep_Status._(0, _omitEnumNames ? '' : 'OK');
  static const ViewStep_Status PARTIAL_FAILURE =
      ViewStep_Status._(1, _omitEnumNames ? '' : 'PARTIAL_FAILURE');
  static const ViewStep_Status UNKNOWN =
      ViewStep_Status._(2, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<ViewStep_Status> values = <ViewStep_Status>[
    OK,
    PARTIAL_FAILURE,
    UNKNOWN,
  ];

  static final $core.List<ViewStep_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ViewStep_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ViewStep_Status._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
