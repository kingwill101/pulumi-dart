// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserCreator {
  /// (Output)
  /// The name of the author, who created this parser.
  final pulumi.Input<String?>? author;
  /// (Output)
  /// The customer who created it, This can represent the partner as well.
  /// In case of prebuilt parser this will be empty.
  final pulumi.Input<String?>? customer;
  /// (Output)
  /// The source of the parser.
  /// Possible values:
  /// GOOGLE
  /// CUSTOM_GOOGLE_OVERRIDE
  /// PARTNER
  /// CUSTOMER
  final pulumi.Input<String?>? source;

  /// Creates a new [ParserCreator].
  /// [author] (Output)
  /// [customer] (Output)
  /// [source] (Output)
  const ParserCreator({
    this.author,
    this.customer,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'customer': ?customer,
      'source': ?source,
    };
  }

  factory ParserCreator.fromMap(Map<String, dynamic> map) {
    return ParserCreator(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
