// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_proxy_convention.dart';

/// The configuration settings of a forward proxy used to make the requests.
class ForwardProxy {
  /// The convention used to determine the url of the request made.
  final pulumi.Input<ForwardProxyConvention>? convention;
  /// The name of the header containing the host of the request.
  final pulumi.Input<String>? customHostHeaderName;
  /// The name of the header containing the scheme of the request.
  final pulumi.Input<String>? customProtoHeaderName;

  /// Creates a new [ForwardProxy].
  /// [convention] The convention used to determine the url of the request made.
  /// [customHostHeaderName] The name of the header containing the host of the request.
  /// [customProtoHeaderName] The name of the header containing the scheme of the request.
  const ForwardProxy({
    this.convention,
    this.customHostHeaderName,
    this.customProtoHeaderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?pulumi.Input.mapOptionalInputValue<ForwardProxyConvention, String>(convention, (value) => value.wireValue),
      'customHostHeaderName': ?customHostHeaderName,
      'customProtoHeaderName': ?customProtoHeaderName,
    };
  }

  factory ForwardProxy.fromMap(Map<String, dynamic> map) {
    return ForwardProxy(
      convention: (() { final guardedValue = map['convention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardProxyConvention.fromValue(guardedValue as String)); })(),
      customHostHeaderName: (() { final guardedValue = map['customHostHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customProtoHeaderName: (() { final guardedValue = map['customProtoHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

