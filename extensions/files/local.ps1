$InstanceType = $(Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/instance-type)
$AvailZone = $(Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/placement/availability-zone)
$AMI_ID = $(Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/ami-id)

@{
    local = @{
        local_facts = @{
            cloud = 'AWS'
            instance_type = $InstanceType
            avail_zone = $AvailZone
            ami_id = $AMI_ID
            environment = 'DIT'
            Support_Team = 'Win_Team'
            Callout = '6-8'
        }
    }
}
