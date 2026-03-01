/// Type of Single Sign-On mechanism being used
enum SingleSignOnType {
  saml("Saml"),
  openId("OpenId");

  const SingleSignOnType(this.value);
  final String value;

  static SingleSignOnType fromValue(String value) {
    for (final item in SingleSignOnType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleSignOnType value: $value');
  }
}

