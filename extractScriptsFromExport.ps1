$Number="AWSTE.2-007"
$dump = "C:\ChallengeDetritus\$($Number)"
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue $dump
$exportedFile = "C:\ChallengeDetritus\$($Number).zip"
Expand-Archive -DestinationPath $dump $exportedFile
$obj = Get-Content -Path "$($dump)\data.json" | ConvertFrom-Json
$output = ""
foreach($activity in $obj.LabProfiles[0].Activities) {
    $output += "Activity: $($activity.Name) `n"
    $output += "`tToken: $($activity.ReplacementTokenAlias) `n"
    $output += "`tButton Text: $($activity.OnDemandEvaluationButtonText) `n"
    foreach($script in $activity.Scripts) {
        $output += "`tScript:`t$($script.Text) `n"
        $output += "`t`tCorrect:`t$($script.CorrectResponse)`n"
        $output += "`t`tIncorrect:`t$($script.IncorrectResponse)`n"

    }

}
$output > Activities.txt
