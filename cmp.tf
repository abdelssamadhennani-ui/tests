
resource "ingcissprod_entraid_claims_mapping_policies" "cmp-p16409-nonprod" {
  display_name = "cmp-p16409-prod-rheaweb-policies"
  definition = [
    jsonencode(
      {
        "ClaimsMappingPolicy" : {
          "Version" : 1,
          "IncludeBasicClaimSet" : "true",
          "ClaimsSchema": [
            {
              "Source": "user",
              "ID": "assignedroles",
              "SamlClaimType": "http://schemas.xmlsoap.org/claims/Group"
            },
            {
              "Source": "user",
              "ID": "mailnickname",
              "SamlClaimType": "NameID"
            }
          ]
        }
      }
    )
  ]
}
