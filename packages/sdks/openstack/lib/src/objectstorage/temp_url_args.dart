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
    required pulumi.Output<String> container,
    pulumi.Output<String>? digest,
    pulumi.Output<String>? key,
    pulumi.Output<String>? method,
    required pulumi.Output<String> object,
    pulumi.Output<bool>? regenerate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? split,
    required pulumi.Output<int> ttl,
  }) :
      container = pulumi.Input.asInput<String>(container),
      digest = pulumi.Input.asOptionalInput<String>(digest),
      key = pulumi.Input.asOptionalInput<String>(key),
      method = pulumi.Input.asOptionalInput<String>(method),
      object = pulumi.Input.asInput<String>(object),
      regenerate = pulumi.Input.asOptionalInput<bool>(regenerate),
      region = pulumi.Input.asOptionalInput<String>(region),
      split = pulumi.Input.asOptionalInput<String>(split),
      ttl = pulumi.Input.asInput<int>(ttl);

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
      container: pulumi.Output.create<String>(map['container'] as String),
      digest: map['digest'] == null ? null : pulumi.Output.create<String>(map['digest'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      method: map['method'] == null ? null : pulumi.Output.create<String>(map['method'] as String),
      object: pulumi.Output.create<String>(map['object'] as String),
      regenerate: map['regenerate'] == null ? null : pulumi.Output.create<bool>(map['regenerate'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      split: map['split'] == null ? null : pulumi.Output.create<String>(map['split'] as String),
      ttl: pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

