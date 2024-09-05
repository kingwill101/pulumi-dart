//
//  Generated code. Do not modify.
//  source: pulumi/analyzer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EnforcementLevel indicates the severity of a policy violation.
class EnforcementLevel extends $pb.ProtobufEnum {
  static const EnforcementLevel ADVISORY =
      EnforcementLevel._(0, _omitEnumNames ? '' : 'ADVISORY');
  static const EnforcementLevel MANDATORY =
      EnforcementLevel._(1, _omitEnumNames ? '' : 'MANDATORY');
  static const EnforcementLevel DISABLED =
      EnforcementLevel._(2, _omitEnumNames ? '' : 'DISABLED');
  static const EnforcementLevel REMEDIATE =
      EnforcementLevel._(3, _omitEnumNames ? '' : 'REMEDIATE');

  static const $core.List<EnforcementLevel> values = <EnforcementLevel>[
    ADVISORY,
    MANDATORY,
    DISABLED,
    REMEDIATE,
  ];

  static final $core.Map<$core.int, EnforcementLevel> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static EnforcementLevel? valueOf($core.int value) => _byValue[value];

  const EnforcementLevel._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
