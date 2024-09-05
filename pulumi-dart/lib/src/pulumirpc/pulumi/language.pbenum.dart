//
//  Generated code. Do not modify.
//  source: pulumi/language.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RuntimeOptionPrompt_RuntimeOptionType extends $pb.ProtobufEnum {
  static const RuntimeOptionPrompt_RuntimeOptionType STRING =
      RuntimeOptionPrompt_RuntimeOptionType._(
          0, _omitEnumNames ? '' : 'STRING');
  static const RuntimeOptionPrompt_RuntimeOptionType INT32 =
      RuntimeOptionPrompt_RuntimeOptionType._(1, _omitEnumNames ? '' : 'INT32');

  static const $core.List<RuntimeOptionPrompt_RuntimeOptionType> values =
      <RuntimeOptionPrompt_RuntimeOptionType>[
    STRING,
    INT32,
  ];

  static final $core.Map<$core.int, RuntimeOptionPrompt_RuntimeOptionType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RuntimeOptionPrompt_RuntimeOptionType? valueOf($core.int value) =>
      _byValue[value];

  const RuntimeOptionPrompt_RuntimeOptionType._($core.int v, $core.String n)
      : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
