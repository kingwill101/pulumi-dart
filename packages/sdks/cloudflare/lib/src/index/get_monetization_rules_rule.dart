// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonetizationRulesRule {
  /// 0x-prefixed 20-byte hexadecimal Ethereum address. Mixed-case addresses must carry a valid EIP-55 checksum; all-lowercase or all-uppercase addresses are also accepted. The address must pass wallet screening whenever its rule is deployed or patched.
  final pulumi.Input<String> address;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  /// Wirefilter expression identifying the requests that require payment. Forwarded verbatim to the Rulesets API, which validates its syntax.
  final pulumi.Input<String> expression;
  /// The server-assigned unique ID of the payment rule. Stable across full-ruleset replacements.
  final pulumi.Input<String> id;
  /// Price in the smallest indivisible unit of the configured payment token, encoded as a decimal string. Must be a canonical decimal integer in [1000, 100000000]: no leading zeros, and a bare JSON number is rejected. The price is required for the fixed-price schemes ("exact" and "upto") and must be at least 1000, the smallest amount the payment facilitator can settle ($0.001 for a 6-decimal token such as USDC), and at most 100000000 ($100 for a 6-decimal token). When the scheme is "origin*controlled" the origin server sets pricing dynamically and the rule carries no price: the field must be omitted — any provided value, including "0", is rejected because it would not be enforced. Responses always encode this as a string and omit it for "origin*controlled" rules; the pattern matches exactly the set of values the server accepts.
  final pulumi.Input<String> price;
  /// X402 payment scheme. "exact" requires the specified payment amount; "upto" permits a payment up to the specified amount. Both fixed-price schemes require the price field.
  /// Available values: "exact", "upto", "originControlled".
  final pulumi.Input<String> scheme;

  /// Creates a new [GetMonetizationRulesRule].
  /// [address] 0x-prefixed 20-byte hexadecimal Ethereum address. Mixed-case addresses must carry a valid EIP-55 checksum; all-lowercase or all-uppercase addresses are also accepted. The address must pass wallet screening whenever its rule is deployed or patched.
  /// [description] Required.
  /// [enabled] Required.
  /// [expression] Wirefilter expression identifying the requests that require payment. Forwarded verbatim to the Rulesets API, which validates its syntax.
  /// [id] The server-assigned unique ID of the payment rule. Stable across full-ruleset replacements.
  /// [price] Price in the smallest indivisible unit of the configured payment token, encoded as a decimal string. Must be a canonical decimal integer in [1000, 100000000]: no leading zeros, and a bare JSON number is rejected. The price is required for the fixed-price schemes ("exact" and "upto") and must be at least 1000, the smallest amount the payment facilitator can settle ($0.001 for a 6-decimal token such as USDC), and at most 100000000 ($100 for a 6-decimal token). When the scheme is "origin*controlled" the origin server sets pricing dynamically and the rule carries no price: the field must be omitted — any provided value, including "0", is rejected because it would not be enforced. Responses always encode this as a string and omit it for "origin*controlled" rules; the pattern matches exactly the set of values the server accepts.
  /// [scheme] X402 payment scheme. "exact" requires the specified payment amount; "upto" permits a payment up to the specified amount. Both fixed-price schemes require the price field.
  const GetMonetizationRulesRule({
    required this.address,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.price,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'price': price,
      'scheme': scheme,
    };
  }

  factory GetMonetizationRulesRule.fromMap(Map<String, dynamic> map) {
    return GetMonetizationRulesRule(
      address: pulumi.Input.fromValue(map['address'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      price: pulumi.Input.fromValue(map['price'] as String),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
