// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_meta_data.dart';

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// Path to the config zip bundle.
  ///
  /// - - -
  final pulumi.Input<String>? configBundle;
  final pulumi.Input<String>? detectMd5hash;
  /// The id of the most recently created revision for this API proxy.
  final pulumi.Input<String>? latestRevisionId;
  /// (Computed) Base 64 MD5 hash of the uploaded data. It is speculative as remote does not return hash of the bundle. Remote changes are detected using returned last_modified timestamp.
  final pulumi.Input<String>? md5hash;
  /// Metadata describing the API proxy.
  /// Structure is documented below.
  final pulumi.Input<List<ApiMetaData>>? metaDatas;
  /// The ID of the API proxy.
  final pulumi.Input<String>? name;
  /// The Apigee Organization name associated with the Apigee instance.
  final pulumi.Input<String>? orgId;
  /// A list of revisions of this API proxy.
  final pulumi.Input<List<String>>? revisions;

  /// Creates a new [ApiState].
  /// [configBundle] Path to the config zip bundle.
  /// [detectMd5hash] Optional.
  /// [latestRevisionId] The id of the most recently created revision for this API proxy.
  /// [md5hash] (Computed) Base 64 MD5 hash of the uploaded data. It is speculative as remote does not return hash of the bundle. Remote changes are detected using returned last_modified timestamp.
  /// [metaDatas] Metadata describing the API proxy.
  /// [name] The ID of the API proxy.
  /// [orgId] The Apigee Organization name associated with the Apigee instance.
  /// [revisions] A list of revisions of this API proxy.
  ApiState({
    this.configBundle,
    this.detectMd5hash,
    this.latestRevisionId,
    this.md5hash,
    this.metaDatas,
    this.name,
    this.orgId,
    this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configBundle': ?configBundle,
      'detectMd5hash': ?detectMd5hash,
      'latestRevisionId': ?latestRevisionId,
      'md5hash': ?md5hash,
      'metaDatas': ?pulumi.Input.mapOptionalInputValue<List<ApiMetaData>, List<Map<String, dynamic>>>(metaDatas, (value) => pulumi.Input.encodeList<ApiMetaData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'orgId': ?orgId,
      'revisions': ?revisions,
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      configBundle: map['configBundle'] == null ? null : (map['configBundle']! as String).input(),
      detectMd5hash: map['detectMd5hash'] == null ? null : (map['detectMd5hash']! as String).input(),
      latestRevisionId: map['latestRevisionId'] == null ? null : (map['latestRevisionId']! as String).input(),
      md5hash: map['md5hash'] == null ? null : (map['md5hash']! as String).input(),
      metaDatas: map['metaDatas'] == null ? null : (pulumi.Input.decodeList<ApiMetaData>(map['metaDatas']!, (value) => ApiMetaData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      revisions: map['revisions'] == null ? null : ((map['revisions']! as List).cast<String>()).input(),
    );
  }
}

