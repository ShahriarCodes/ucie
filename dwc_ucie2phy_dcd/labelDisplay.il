
/****************************************************/
 LIBRARY = "gpdk090"
/****************************************************/

prog( ( libId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    cdfId = or(
        cdfGetUserLibCDF( libId )
        cdfCreateUserLibCDF( libId )
    )
    cdfId->instNameType = "schematic"
    cdfId->instDisplayMode = "instName"
)

/****************************************************/
 LIBRARY = "gpdk090"
 CELL    = "nmos1v_hvt"
/****************************************************/

prog( ( libId cellId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    unless( cellId = ddGetObj( LIBRARY CELL )
        warn( "Could not find cell %s." CELL )
        return( nil )
    )
    cdfId = or(
        cdfGetUserCellCDF( cellId )
        cdfCreateUserCellCDF( cellId )
    )
    cdfId->instNameType = "schematic"
    cdfId->instDisplayMode = "instName"
)

/****************************************************/
 LIBRARY = "basic"
/****************************************************/

prog( ( libId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    cdfId = or(
        cdfGetUserLibCDF( libId )
        cdfCreateUserLibCDF( libId )
    )
    cdfId->paramDisplayMode = "opPoint"
    cdfId->paramSimType = "DC"
)

/****************************************************/
 LIBRARY = "basic"
 CELL    = "ipin"
/****************************************************/

prog( ( libId cellId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    unless( cellId = ddGetObj( LIBRARY CELL )
        warn( "Could not find cell %s." CELL )
        return( nil )
    )
    cdfId = or(
        cdfGetUserCellCDF( cellId )
        cdfCreateUserCellCDF( cellId )
    )
    cdfId->paramDisplayMode = "opPoint"
    cdfId->paramSimType = "DC"
)

/****************************************************/
 LIBRARY = "basic"
 CELL    = "noConn"
/****************************************************/

prog( ( libId cellId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    unless( cellId = ddGetObj( LIBRARY CELL )
        warn( "Could not find cell %s." CELL )
        return( nil )
    )
    cdfId = or(
        cdfGetUserCellCDF( cellId )
        cdfCreateUserCellCDF( cellId )
    )
    cdfId->paramDisplayMode = "opPoint"
    cdfId->paramSimType = "DC"
)

/****************************************************/
 LIBRARY = "basic"
 CELL    = "opin"
/****************************************************/

prog( ( libId cellId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    unless( cellId = ddGetObj( LIBRARY CELL )
        warn( "Could not find cell %s." CELL )
        return( nil )
    )
    cdfId = or(
        cdfGetUserCellCDF( cellId )
        cdfCreateUserCellCDF( cellId )
    )
    cdfId->paramDisplayMode = "opPoint"
    cdfId->paramSimType = "DC"
)
