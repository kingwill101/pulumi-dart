// This is a generated file - do not edit.
//
// Generated from pulumi/provider.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The mode that controls how the provider handles the proposed name. If not specified, defaults to `PROPOSE`.
/// - `PROPOSE`: The provider may use the proposed name as a suggestion but is free to modify it.
/// - `ENFORCE`: The provider must use exactly the proposed name or return an error.
/// - `DISABLE`: The provider should disable automatic naming and return an error if no explicit name
///   is provided by user's program.
class CheckRequest_AutonamingOptions_Mode extends $pb.ProtobufEnum {
  static const CheckRequest_AutonamingOptions_Mode PROPOSE =
      CheckRequest_AutonamingOptions_Mode._(0, _omitEnumNames ? '' : 'PROPOSE');
  static const CheckRequest_AutonamingOptions_Mode ENFORCE =
      CheckRequest_AutonamingOptions_Mode._(1, _omitEnumNames ? '' : 'ENFORCE');
  static const CheckRequest_AutonamingOptions_Mode DISABLE =
      CheckRequest_AutonamingOptions_Mode._(2, _omitEnumNames ? '' : 'DISABLE');

  static const $core.List<CheckRequest_AutonamingOptions_Mode> values =
      <CheckRequest_AutonamingOptions_Mode>[
    PROPOSE,
    ENFORCE,
    DISABLE,
  ];

  static final $core.List<CheckRequest_AutonamingOptions_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CheckRequest_AutonamingOptions_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CheckRequest_AutonamingOptions_Mode._(super.value, super.name);
}

/// The type of property diff kinds.
class PropertyDiff_Kind extends $pb.ProtobufEnum {
  /// This property was added.
  static const PropertyDiff_Kind ADD =
      PropertyDiff_Kind._(0, _omitEnumNames ? '' : 'ADD');

  /// This property was added, and this change requires a replace.
  static const PropertyDiff_Kind ADD_REPLACE =
      PropertyDiff_Kind._(1, _omitEnumNames ? '' : 'ADD_REPLACE');

  /// This property was removed.
  static const PropertyDiff_Kind DELETE =
      PropertyDiff_Kind._(2, _omitEnumNames ? '' : 'DELETE');

  /// This property was removed, and this change requires a replace.
  static const PropertyDiff_Kind DELETE_REPLACE =
      PropertyDiff_Kind._(3, _omitEnumNames ? '' : 'DELETE_REPLACE');

  /// This property's value was changed.
  static const PropertyDiff_Kind UPDATE =
      PropertyDiff_Kind._(4, _omitEnumNames ? '' : 'UPDATE');

  /// This property's value was changed, and this change requires a replace.
  static const PropertyDiff_Kind UPDATE_REPLACE =
      PropertyDiff_Kind._(5, _omitEnumNames ? '' : 'UPDATE_REPLACE');

  static const $core.List<PropertyDiff_Kind> values = <PropertyDiff_Kind>[
    ADD,
    ADD_REPLACE,
    DELETE,
    DELETE_REPLACE,
    UPDATE,
    UPDATE_REPLACE,
  ];

  static final $core.List<PropertyDiff_Kind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static PropertyDiff_Kind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PropertyDiff_Kind._(super.value, super.name);
}

/// The type of high-level diff results.
class DiffResponse_DiffChanges extends $pb.ProtobufEnum {
  /// A diff was performed but it is unknown whether there are changes or not. This exists to support legacy
  /// behaviour and should be generally avoided wherever possible.
  static const DiffResponse_DiffChanges DIFF_UNKNOWN =
      DiffResponse_DiffChanges._(0, _omitEnumNames ? '' : 'DIFF_UNKNOWN');

  /// A diff was performed and there were no changes. An update is not required.
  static const DiffResponse_DiffChanges DIFF_NONE =
      DiffResponse_DiffChanges._(1, _omitEnumNames ? '' : 'DIFF_NONE');

  /// A diff was performed, and changes were detected that require an update or replacement.
  static const DiffResponse_DiffChanges DIFF_SOME =
      DiffResponse_DiffChanges._(2, _omitEnumNames ? '' : 'DIFF_SOME');

  static const $core.List<DiffResponse_DiffChanges> values =
      <DiffResponse_DiffChanges>[
    DIFF_UNKNOWN,
    DIFF_NONE,
    DIFF_SOME,
  ];

  static final $core.List<DiffResponse_DiffChanges?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DiffResponse_DiffChanges? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DiffResponse_DiffChanges._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
