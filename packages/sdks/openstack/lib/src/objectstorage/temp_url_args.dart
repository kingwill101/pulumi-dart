// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_objectstorage_temp_url_temp_url_args_doc}
/// The set of arguments for TempUrl.
/// {@endtemplate}
/// {@macro pulumi_objectstorage_temp_url_temp_url_args_doc}
class TempUrlArgs {
  /// The container name the object belongs to.
  final pulumi.Input<String> container;
  /// The digest to use when generating the tempurl.
  /// Supported values are `sha1`, `sha256` and `sha512`. Default is `sha1`.
  final pulumi.Input<String>? digest;
  /// The key to use when generating the tempurl. If not
  /// provided, the key will be read from the container or account metadata.
  final pulumi.Input<String>? key;
  /// The method allowed when accessing this URL.
  /// Valid values are `GET`, and `POST`. Default is `GET`.
  final pulumi.Input<String>? method;
  /// The object name the tempurl is for.
  final pulumi.Input<String> object;
  /// Whether to automatically regenerate the URL when
  /// it has expired. If set to true, this will create a new resource with a new
  /// ID and new URL. Defaults to false.
  final pulumi.Input<bool>? regenerate;
  /// The region the tempurl is located in.
  final pulumi.Input<String>? region;
  /// Split is the string on which to split the object URL.
  /// Default is `/v1/`.
  final pulumi.Input<String>? split;
  /// The TTL, in seconds, for the URL. For how long it should
  /// be valid.
  final pulumi.Input<int> ttl;

  /// Creates a new [TempUrlArgs].
  /// [container] The container name the object belongs to.
  /// [digest] The digest to use when generating the tempurl.
  /// [key] The key to use when generating the tempurl. If not
  /// [method] The method allowed when accessing this URL.
  /// [object] The object name the tempurl is for.
  /// [regenerate] Whether to automatically regenerate the URL when
  /// [region] The region the tempurl is located in.
  /// [split] Split is the string on which to split the object URL.
  /// [ttl] The TTL, in seconds, for the URL. For how long it should
  TempUrlArgs({
    required this.container,
    this.digest,
    this.key,
    this.method,
    required this.object,
    this.regenerate,
    this.region,
    this.split,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'digest': ?digest,
      'key': ?key,
      'method': ?method,
      'object': object,
      'regenerate': ?regenerate,
      'region': ?region,
      'split': ?split,
      'ttl': ttl,
    };
  }

  factory TempUrlArgs.fromMap(Map<String, dynamic> map) {
    return TempUrlArgs(
      container: (map['container'] as String).input(),
      digest: map['digest'] == null ? null : (map['digest'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      method: map['method'] == null ? null : (map['method'] as String).input(),
      object: (map['object'] as String).input(),
      regenerate: map['regenerate'] == null ? null : (map['regenerate'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      split: map['split'] == null ? null : (map['split'] as String).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

