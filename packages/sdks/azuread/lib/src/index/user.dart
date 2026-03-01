import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Manages a user within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `User.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `User Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.User("example", {
///     userPrincipalName: "jdoe@example.com",
///     displayName: "J. Doe",
///     mailNickname: "jdoe",
///     password: "SecretP@sswd99!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.User("example",
///     user_principal_name="jdoe@example.com",
///     display_name="J. Doe",
///     mail_nickname="jdoe",
///     password="SecretP@sswd99!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.User("example", new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///         DisplayName = "J. Doe",
///         MailNickname = "jdoe",
///         Password = "SecretP@sswd99!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewUser(ctx, "example", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("jdoe@example.com"),
/// 			DisplayName:       pulumi.String("J. Doe"),
/// 			MailNickname:      pulumi.String("jdoe"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new User("example", UserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .displayName("J. Doe")
///             .mailNickname("jdoe")
///             .password("SecretP@sswd99!")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:User
///     properties:
///       userPrincipalName: jdoe@example.com
///       displayName: J. Doe
///       mailNickname: jdoe
///       password: SecretP@sswd99!
/// ```
///
///
/// ## Import
///
/// Users can be imported using their object ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/user:User my_user /users/00000000-0000-0000-0000-000000000000
/// ```
class User extends pulumi.CustomResource {
  /// A freeform field for the user to describe themselves
  late final pulumi.Output<String> aboutMe;
  /// Whether or not the account should be enabled.
  late final pulumi.Output<bool?> accountEnabled;
  /// The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`. Omit this property or specify a blank string to unset.
  late final pulumi.Output<String?> ageGroup;
  /// A list of telephone numbers for the user. Only one number can be set for this property. Read-only for users synced with Azure AD Connect.
  late final pulumi.Output<List<String>> businessPhones;
  /// The city in which the user is located.
  late final pulumi.Output<String?> city;
  /// The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  late final pulumi.Output<String?> companyName;
  /// Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`. Omit this property or specify a blank string to unset.
  late final pulumi.Output<String?> consentProvidedForMinor;
  /// The cost center associated with the user.
  late final pulumi.Output<String?> costCenter;
  /// The country/region in which the user is located. Examples include: `NO`, `JP`, and `GB`.
  late final pulumi.Output<String?> country;
  /// Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`).
  late final pulumi.Output<String> creationType;
  /// The name for the department in which the user works.
  late final pulumi.Output<String?> department;
  /// Whether the user's password is exempt from expiring. Defaults to `false`.
  late final pulumi.Output<bool?> disablePasswordExpiration;
  /// Whether the user is allowed weaker passwords than the default policy to be specified. Defaults to `false`.
  late final pulumi.Output<bool?> disableStrongPassword;
  /// The name to display in the address book for the user.
  late final pulumi.Output<String> displayName;
  /// The name of the division in which the user works.
  late final pulumi.Output<String?> division;
  /// The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  late final pulumi.Output<String?> employeeHireDate;
  /// The employee identifier assigned to the user by the organisation.
  late final pulumi.Output<String?> employeeId;
  /// Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  late final pulumi.Output<String?> employeeType;
  /// For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are `PendingAcceptance` or `Accepted`.
  late final pulumi.Output<String> externalUserState;
  /// The fax number of the user.
  late final pulumi.Output<String?> faxNumber;
  /// Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password. Defaults to `false`.
  late final pulumi.Output<bool?> forcePasswordChange;
  /// The given name (first name) of the user.
  late final pulumi.Output<String?> givenName;
  /// A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user.
  late final pulumi.Output<List<String>> imAddresses;
  /// The user’s job title.
  late final pulumi.Output<String?> jobTitle;
  /// The SMTP address for the user. This property cannot be unset once specified.
  late final pulumi.Output<String> mail;
  /// The mail alias for the user. Defaults to the user name part of the user principal name (UPN).
  late final pulumi.Output<String> mailNickname;
  /// The object ID of the user's manager.
  late final pulumi.Output<String?> managerId;
  /// The primary cellular telephone number for the user.
  late final pulumi.Output<String?> mobilePhone;
  /// The object ID of the user.
  late final pulumi.Output<String> objectId;
  /// The office location in the user's place of business.
  late final pulumi.Output<String?> officeLocation;
  /// The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesDistinguishedName;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesDomainName;
  /// The value used to associate an on-premise Active Directory user account with their Azure AD user object. This must be specified if you are using a federated domain for the user's `user_principal_name` property when creating a new user account.
  late final pulumi.Output<String> onpremisesImmutableId;
  /// The on-premise SAM account name of the user.
  late final pulumi.Output<String> onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesSecurityIdentifier;
  /// Whether this user is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  late final pulumi.Output<bool> onpremisesSyncEnabled;
  /// The on-premise user principal name of the user.
  late final pulumi.Output<String> onpremisesUserPrincipalName;
  /// A list of additional email addresses for the user.
  late final pulumi.Output<List<String>?> otherMails;
  /// The password for the user. The password must satisfy minimum requirements as specified by the password policy. The maximum length is 256 characters. This property is required when creating a new user.
  ///
  /// > **Passwords and importing users** Passwords can be changed but not cleared. Removing the `password` property for an existing user resource, or setting the password value to a blank string, will not remove the password. When importing a user, Terraform will not reset the password unless the value is subsequently changed in your configuration.
  late final pulumi.Output<String> password;
  /// The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  late final pulumi.Output<String?> postalCode;
  /// The user's preferred language, in ISO 639-1 notation.
  late final pulumi.Output<String?> preferredLanguage;
  /// List of email addresses for the user that direct to the same mailbox.
  late final pulumi.Output<List<String>> proxyAddresses;
  /// Whether or not the Outlook global address list should include this user. Defaults to `true`.
  late final pulumi.Output<bool?> showInAddressList;
  /// The state or province in the user's address.
  late final pulumi.Output<String?> state;
  /// The street address of the user's place of business.
  late final pulumi.Output<String?> streetAddress;
  /// The user's surname (family name or last name).
  late final pulumi.Output<String?> surname;
  /// The usage location of the user. Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. The usage location is a two letter country code (ISO standard 3166). Examples include: `NO`, `JP`, and `GB`. Cannot be reset to null once set.
  late final pulumi.Output<String?> usageLocation;
  /// The user principal name (UPN) of the user.
  late final pulumi.Output<String> userPrincipalName;
  /// The user type in the directory. Possible values are `Guest` or `Member`.
  late final pulumi.Output<String> userType;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_index_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aboutMe = registerOutput<String>('aboutMe');
    this.accountEnabled = registerOutput<bool?>('accountEnabled');
    this.ageGroup = registerOutput<String?>('ageGroup');
    this.businessPhones = registerOutput<List<String>>('businessPhones');
    this.city = registerOutput<String?>('city');
    this.companyName = registerOutput<String?>('companyName');
    this.consentProvidedForMinor = registerOutput<String?>('consentProvidedForMinor');
    this.costCenter = registerOutput<String?>('costCenter');
    this.country = registerOutput<String?>('country');
    this.creationType = registerOutput<String>('creationType');
    this.department = registerOutput<String?>('department');
    this.disablePasswordExpiration = registerOutput<bool?>('disablePasswordExpiration');
    this.disableStrongPassword = registerOutput<bool?>('disableStrongPassword');
    this.displayName = registerOutput<String>('displayName');
    this.division = registerOutput<String?>('division');
    this.employeeHireDate = registerOutput<String?>('employeeHireDate');
    this.employeeId = registerOutput<String?>('employeeId');
    this.employeeType = registerOutput<String?>('employeeType');
    this.externalUserState = registerOutput<String>('externalUserState');
    this.faxNumber = registerOutput<String?>('faxNumber');
    this.forcePasswordChange = registerOutput<bool?>('forcePasswordChange');
    this.givenName = registerOutput<String?>('givenName');
    this.imAddresses = registerOutput<List<String>>('imAddresses');
    this.jobTitle = registerOutput<String?>('jobTitle');
    this.mail = registerOutput<String>('mail');
    this.mailNickname = registerOutput<String>('mailNickname');
    this.managerId = registerOutput<String?>('managerId');
    this.mobilePhone = registerOutput<String?>('mobilePhone');
    this.objectId = registerOutput<String>('objectId');
    this.officeLocation = registerOutput<String?>('officeLocation');
    this.onpremisesDistinguishedName = registerOutput<String>('onpremisesDistinguishedName');
    this.onpremisesDomainName = registerOutput<String>('onpremisesDomainName');
    this.onpremisesImmutableId = registerOutput<String>('onpremisesImmutableId');
    this.onpremisesSamAccountName = registerOutput<String>('onpremisesSamAccountName');
    this.onpremisesSecurityIdentifier = registerOutput<String>('onpremisesSecurityIdentifier');
    this.onpremisesSyncEnabled = registerOutput<bool>('onpremisesSyncEnabled');
    this.onpremisesUserPrincipalName = registerOutput<String>('onpremisesUserPrincipalName');
    this.otherMails = registerOutput<List<String>?>('otherMails');
    this.password = registerOutput<String>('password');
    this.postalCode = registerOutput<String?>('postalCode');
    this.preferredLanguage = registerOutput<String?>('preferredLanguage');
    this.proxyAddresses = registerOutput<List<String>>('proxyAddresses');
    this.showInAddressList = registerOutput<bool?>('showInAddressList');
    this.state = registerOutput<String?>('state');
    this.streetAddress = registerOutput<String?>('streetAddress');
    this.surname = registerOutput<String?>('surname');
    this.usageLocation = registerOutput<String?>('usageLocation');
    this.userPrincipalName = registerOutput<String>('userPrincipalName');
    this.userType = registerOutput<String>('userType');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aboutMe = registerOutput<String>('aboutMe');
    this.accountEnabled = registerOutput<bool?>('accountEnabled');
    this.ageGroup = registerOutput<String?>('ageGroup');
    this.businessPhones = registerOutput<List<String>>('businessPhones');
    this.city = registerOutput<String?>('city');
    this.companyName = registerOutput<String?>('companyName');
    this.consentProvidedForMinor = registerOutput<String?>('consentProvidedForMinor');
    this.costCenter = registerOutput<String?>('costCenter');
    this.country = registerOutput<String?>('country');
    this.creationType = registerOutput<String>('creationType');
    this.department = registerOutput<String?>('department');
    this.disablePasswordExpiration = registerOutput<bool?>('disablePasswordExpiration');
    this.disableStrongPassword = registerOutput<bool?>('disableStrongPassword');
    this.displayName = registerOutput<String>('displayName');
    this.division = registerOutput<String?>('division');
    this.employeeHireDate = registerOutput<String?>('employeeHireDate');
    this.employeeId = registerOutput<String?>('employeeId');
    this.employeeType = registerOutput<String?>('employeeType');
    this.externalUserState = registerOutput<String>('externalUserState');
    this.faxNumber = registerOutput<String?>('faxNumber');
    this.forcePasswordChange = registerOutput<bool?>('forcePasswordChange');
    this.givenName = registerOutput<String?>('givenName');
    this.imAddresses = registerOutput<List<String>>('imAddresses');
    this.jobTitle = registerOutput<String?>('jobTitle');
    this.mail = registerOutput<String>('mail');
    this.mailNickname = registerOutput<String>('mailNickname');
    this.managerId = registerOutput<String?>('managerId');
    this.mobilePhone = registerOutput<String?>('mobilePhone');
    this.objectId = registerOutput<String>('objectId');
    this.officeLocation = registerOutput<String?>('officeLocation');
    this.onpremisesDistinguishedName = registerOutput<String>('onpremisesDistinguishedName');
    this.onpremisesDomainName = registerOutput<String>('onpremisesDomainName');
    this.onpremisesImmutableId = registerOutput<String>('onpremisesImmutableId');
    this.onpremisesSamAccountName = registerOutput<String>('onpremisesSamAccountName');
    this.onpremisesSecurityIdentifier = registerOutput<String>('onpremisesSecurityIdentifier');
    this.onpremisesSyncEnabled = registerOutput<bool>('onpremisesSyncEnabled');
    this.onpremisesUserPrincipalName = registerOutput<String>('onpremisesUserPrincipalName');
    this.otherMails = registerOutput<List<String>?>('otherMails');
    this.password = registerOutput<String>('password');
    this.postalCode = registerOutput<String?>('postalCode');
    this.preferredLanguage = registerOutput<String?>('preferredLanguage');
    this.proxyAddresses = registerOutput<List<String>>('proxyAddresses');
    this.showInAddressList = registerOutput<bool?>('showInAddressList');
    this.state = registerOutput<String?>('state');
    this.streetAddress = registerOutput<String?>('streetAddress');
    this.surname = registerOutput<String?>('surname');
    this.usageLocation = registerOutput<String?>('usageLocation');
    this.userPrincipalName = registerOutput<String>('userPrincipalName');
    this.userType = registerOutput<String>('userType');
  }
}
