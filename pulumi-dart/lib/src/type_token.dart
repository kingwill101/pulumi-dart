final Map<Type, String> _registeredTypeTokens = <Type, String>{};

/// {@template pulumi.type_token.register}
/// Registers a Pulumi type token for a Dart type.
/// {@endtemplate}
///
void registerTypeToken<T>(String token) {
  _registeredTypeTokens[T] = token;
}

/// {@template pulumi.type_token.lookup}
/// Looks up a registered Pulumi type token for [type].
/// {@endtemplate}
///
String? getTypeToken(Type type) {
  return _registeredTypeTokens[type];
}

/// {@template pulumi.type_token.clear}
/// Clears all registered type tokens (test helper).
/// {@endtemplate}
///
void clearTypeTokensForTesting() {
  _registeredTypeTokens.clear();
}
