// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProfileReferral {
  /// The Profile referral code.  If new accounts use this when signing up for Linode, referring account will receive credit.
  final pulumi.Input<String> code;
  /// The number of completed signups with the referral code.
  final pulumi.Input<int> completed;
  /// The amount of account credit in US Dollars issued to the account through the referral program.
  final pulumi.Input<double> credit;
  /// The number of pending signups for the referral code. To receive credit the signups must be completed.
  final pulumi.Input<int> pending;
  /// The number of users who have signed up with the referral code.
  final pulumi.Input<int> total;
  /// The referral URL.
  final pulumi.Input<String> url;

  /// Creates a new [GetProfileReferral].
  /// [code] The Profile referral code.  If new accounts use this when signing up for Linode, referring account will receive credit.
  /// [completed] The number of completed signups with the referral code.
  /// [credit] The amount of account credit in US Dollars issued to the account through the referral program.
  /// [pending] The number of pending signups for the referral code. To receive credit the signups must be completed.
  /// [total] The number of users who have signed up with the referral code.
  /// [url] The referral URL.
  GetProfileReferral({
    required this.code,
    required this.completed,
    required this.credit,
    required this.pending,
    required this.total,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'completed': completed,
      'credit': credit,
      'pending': pending,
      'total': total,
      'url': url,
    };
  }

  factory GetProfileReferral.fromMap(Map<String, dynamic> map) {
    return GetProfileReferral(
      code: pulumi.Input.fromValue(map['code'] as String),
      completed: pulumi.Input.fromValue(map['completed'] as int),
      credit: pulumi.Input.fromValue(map['credit'] as double),
      pending: pulumi.Input.fromValue(map['pending'] as int),
      total: pulumi.Input.fromValue(map['total'] as int),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

