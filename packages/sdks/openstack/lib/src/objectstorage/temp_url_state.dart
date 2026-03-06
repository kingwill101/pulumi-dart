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
  final pulumi.Input<String>? object_;
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
  /// [object_] The object name the tempurl is for.
  /// [regenerate] Whether to automatically regenerate the URL when
  /// [region] The region the tempurl is located in.
  /// [split] Split is the string on which to split the object URL.
  /// [ttl] The TTL, in seconds, for the URL. For how long it should
  /// [url] The URL
  const TempUrlState({
    this.container,
    this.digest,
    this.key,
    this.method,
    this.object_,
    this.regenerate,
    this.region,
    this.split,
    this.ttl,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'digest': ?digest,
      'key': ?key,
      'method': ?method,
      'object': ?object_,
      'regenerate': ?regenerate,
      'region': ?region,
      'split': ?split,
      'ttl': ?ttl,
      'url': ?url,
    };
  }

  factory TempUrlState.fromMap(Map<String, dynamic> map) {
    return TempUrlState(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regenerate: (() { final guardedValue = map['regenerate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      split: (() { final guardedValue = map['split']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

