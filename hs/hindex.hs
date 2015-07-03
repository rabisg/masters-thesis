-- | Index Handle
data Index doc p = Index
                   { -- | Current configuration of the running index
                     config   :: IndexConfig
                     -- | The in-memory terms of the index
                   , segments :: MVar (SegmentSet doc (Posting doc p))
                   }

data SegmentSet doc p = SegmentSet
                        { segSetBaseDir    :: FilePath
                        , inMemorySegment  :: InMemorySegment p
                        , externalSegments :: Map SegmentId (ExternalSegment p)
                        , deletedDocs      :: Set doc
                        }
