data HIndex doc p where
  HIndex :: Document doc p =>
            { -- | Current configuration of the running index
              hConfig         :: HIndexConfig
              -- | The in-memory terms of the index
            , hCurSegment     :: IORef (InMemorySegment doc b)
              -- | The term indices of the active segments
              -- Currently the term indices of all active segments
              -- are stored in memory
            , hActiveSegments :: IORef (Map SegmentId (Dictionary doc p))
              -- | List of deleted document ids.
              -- Stored in memory and written to disk
              -- with each flush operation
            , hDeletedDocs    :: IORef [DocumentId doc]
            } -> HIndex doc p
