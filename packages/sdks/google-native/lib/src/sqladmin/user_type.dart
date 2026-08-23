/// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
enum UserType {
  builtIn("BUILT_IN"),
  cloudIamUser("CLOUD_IAM_USER"),
  cloudIamServiceAccount("CLOUD_IAM_SERVICE_ACCOUNT"),
  cloudIamGroup("CLOUD_IAM_GROUP"),
  cloudIamGroupUser("CLOUD_IAM_GROUP_USER"),
  cloudIamGroupServiceAccount("CLOUD_IAM_GROUP_SERVICE_ACCOUNT");

  const UserType(this.wireValue);
  final String wireValue;

  static UserType fromValue(String value) {
    for (final item in UserType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType value: $value');
  }
}
