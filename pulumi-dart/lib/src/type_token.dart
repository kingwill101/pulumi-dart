final Map<Type, String> _registeredTypeTokens = <Type, String>{};

void registerTypeToken<T>(String token) {
  _registeredTypeTokens[T] = token;
}

String? getTypeToken(Type type) {
  return _registeredTypeTokens[type];
}

void clearTypeTokensForTesting() {
  _registeredTypeTokens.clear();
}
