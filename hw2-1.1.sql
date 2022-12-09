select
    tracks.TrackID as TrackId
from 
    tracks
where tracks.Milliseconds <= 1000000;