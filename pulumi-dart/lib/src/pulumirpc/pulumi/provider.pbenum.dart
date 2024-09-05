//
//  Generated code. Do not modify.
//  source: pulumi/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PropertyDiff_Kind extends $pb.ProtobufEnum {
  static const PropertyDiff_Kind ADD =
      PropertyDiff_Kind._(0, _omitEnumNames ? '' : 'ADD');
  static const PropertyDiff_Kind ADD_REPLACE =
      PropertyDiff_Kind._(1, _omitEnumNames ? '' : 'ADD_REPLACE');
  static const PropertyDiff_Kind DELETE =
      PropertyDiff_Kind._(2, _omitEnumNames ? '' : 'DELETE');
  static const PropertyDiff_Kind DELETE_REPLACE =
      PropertyDiff_Kind._(3, _omitEnumNames ? '' : 'DELETE_REPLACE');
  static const PropertyDiff_Kind UPDATE =
      PropertyDiff_Kind._(4, _omitEnumNames ? '' : 'UPDATE');
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

  static final $core.Map<$core.int, PropertyDiff_Kind> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PropertyDiff_Kind? valueOf($core.int value) => _byValue[value];

  const PropertyDiff_Kind._($core.int v, $core.String n) : super(v, n);
}

class DiffResponse_DiffChanges extends $pb.ProtobufEnum {
  static const DiffResponse_DiffChanges DIFF_UNKNOWN =
      DiffResponse_DiffChanges._(0, _omitEnumNames ? '' : 'DIFF_UNKNOWN');
  static const DiffResponse_DiffChanges DIFF_NONE =
      DiffResponse_DiffChanges._(1, _omitEnumNames ? '' : 'DIFF_NONE');
  static const DiffResponse_DiffChanges DIFF_SOME =
      DiffResponse_DiffChanges._(2, _omitEnumNames ? '' : 'DIFF_SOME');

  static const $core.List<DiffResponse_DiffChanges> values =
      <DiffResponse_DiffChanges>[
    DIFF_UNKNOWN,
    DIFF_NONE,
    DIFF_SOME,
  ];

  static final $core.Map<$core.int, DiffResponse_DiffChanges> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DiffResponse_DiffChanges? valueOf($core.int value) => _byValue[value];

  const DiffResponse_DiffChanges._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
