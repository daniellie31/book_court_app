class Venue {
  // int ticketNum;
  // DateTime createdDate;
  String venueImage;
  String venueName;
  String venueAddress;
  double venueDistance;
  double venueRating;
  int venueReviews;

  Venue({
    required this.venueImage,
    required this.venueName,
    required this.venueAddress,
    required this.venueDistance,
    required this.venueRating,
    required this.venueReviews,
  });

  // BrowseIssue copy({
  //   int? ticketNum,
  //   DateTime? createdDate,
  //   String? issueDesc,
  //   String? requestFor,
  //   String? createdBy,
  //   String? status,
  //   String? supportCategory,
  // }) =>
  //     BrowseIssue(
  //       ticketNum: ticketNum ?? this.ticketNum,
  //       createdDate: createdDate ?? this.createdDate,
  //       issueDesc: issueDesc ?? this.issueDesc,
  //       requestFor: requestFor ?? this.requestFor,
  //       createdBy: createdBy ?? this.createdBy,
  //       status: status ?? this.status,
  //       supportCategory: supportCategory ?? this.supportCategory,
  //     );
}
