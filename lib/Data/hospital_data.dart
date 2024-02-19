class Hospital {
  int? id;
  String? hospitalName;
  String? hospitalLocation;
  Hospital({
   required this.id,
    required this.hospitalName,
    required this.hospitalLocation,
});
}

List<Hospital> hospitalData = [
  Hospital(id: 01, hospitalName: "Prime Hospital", hospitalLocation: "Naroda"),
  Hospital(id: 02, hospitalName: "Rakesh Hospital", hospitalLocation: "Nikol"),
  Hospital(id: 03, hospitalName: "DK Hospital", hospitalLocation: "Vastral"),
  Hospital(id: 04, hospitalName: "Param Hospital", hospitalLocation: "Vastral"),
  Hospital(id: 05, hospitalName: "Akash Hospital", hospitalLocation: "Iskcon"),
  Hospital(id: 06, hospitalName: "Paras Hospital", hospitalLocation: "Iskcon")
];