// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TempUrl resources.
class TempUrlState {
  /// The container name the object belongs to.
  final pulumi.Input<String>? container;
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
  final pulumi.Input<String>? object;
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
  final pulumi.Input<int>? ttl;
  /// The URL
  final pulumi.Input<String>? url;

  /// Creates a new [TempUrlState].
  /// [container] The container name the object belongs to.
  /// [digest] The digest to use when generating the tempurl.
  /// [key] The key to use when generating the tempurl. If not
  /// [method] The method allowed when accessing this URL.
  /// [object] The object name the tempurl is for.
  /// [regenerate] Whether to automatically regenerate the URL when
  /// [region] The region the tempurl is located in.
  /// [split] Split is the string on which to split the object URL.
  /// [ttl] The TTL, in seconds, for the URL. For how long it should
  /// [url] The URL
  TempUrlState({
    pulumi.Output<String>? container,
    pulumi.Output<String>? digest,
    pulumi.Output<String>? key,
    pulumi.Output<String>? method,
    pulumi.Output<String>? object,
    pulumi.Output<bool>? regenerate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? split,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? url,
  }) :
      container = pulumi.Input.asOptionalInput<String>(container),
      digest = pulumi.Input.asOptionalInput<String>(digest),
      key = pulumi.Input.asOptionalInput<String>(key),
      method = pulumi.Input.asOptionalInput<String>(method),
      object = pulumi.Input.asOptionalInput<String>(object),
      regenerate = pulumi.Input.asOptionalInput<bool>(regenerate),
      region = pulumi.Input.asOptionalInput<String>(region),
      split = pulumi.Input.asOptionalInput<String>(split),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'digest': ?digest,
      'key': ?key,
      'method': ?method,
      'object': ?object,
      'regenerate': ?regenerate,
      'region': ?region,
      'split': ?split,
      'ttl': ?ttl,
      'url': ?url,
    };
  }

  factory TempUrlState.fromMap(Map<String, dynamic> map) {
    return TempUrlState(
      container: map['container'] == null ? null : pulumi.Output.create<String>(map['container'] as String),
      digest: map['digest'] == null ? null : pulumi.Output.create<String>(map['digest'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      method: map['method'] == null ? null : pulumi.Output.create<String>(map['method'] as String),
      object: map['object'] == null ? null : pulumi.Output.create<String>(map['object'] as String),
      regenerate: map['regenerate'] == null ? null : pulumi.Output.create<bool>(map['regenerate'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      split: map['split'] == null ? null : pulumi.Output.create<String>(map['split'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

