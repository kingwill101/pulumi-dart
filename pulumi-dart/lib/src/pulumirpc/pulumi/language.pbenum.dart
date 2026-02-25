// This is a generated file - do not edit.
//
// Generated from pulumi/language.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// `RuntimeOptionType` is an enum that captures the type of a runtime option.
class RuntimeOptionPrompt_RuntimeOptionType extends $pb.ProtobufEnum {
  /// A string value.
  static const RuntimeOptionPrompt_RuntimeOptionType STRING =
      RuntimeOptionPrompt_RuntimeOptionType._(
          0, _omitEnumNames ? '' : 'STRING');

  /// A 32-bit integer value.
  static const RuntimeOptionPrompt_RuntimeOptionType INT32 =
      RuntimeOptionPrompt_RuntimeOptionType._(1, _omitEnumNames ? '' : 'INT32');

  static const $core.List<RuntimeOptionPrompt_RuntimeOptionType> values =
      <RuntimeOptionPrompt_RuntimeOptionType>[
    STRING,
    INT32,
  ];

  static final $core.List<RuntimeOptionPrompt_RuntimeOptionType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RuntimeOptionPrompt_RuntimeOptionType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RuntimeOptionPrompt_RuntimeOptionType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
