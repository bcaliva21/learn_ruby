def rank_teams(votes)
    rankings = {}
    placements = {}
    votes[0].each_char.with_index do |l,i|
        rankings[l] = {}
        placements[i] = nil
    end

    votes.each do |ballot|
        ballot.each_char.with_index do |l,i|
            if rankings[l].key?(i)
                rankings[l][i] += 1
            else
                rankings[l][i] = 1
            end
        end
    end

    placements.each do |pkey,pval|
        rankings.each do |rkey,rval|
          if placements[pkey].nil?
              placements[pkey] = {}
              placements[pkey][:current] = rkey
              placements[pkey][:tally] = rankings[rkey][pkey]
          else
              if placements[pkey][:tally] < rankings[rkey][pkey]
                  placements[pkey][:current] = rkey
                  placements[pkey][:tally] = rankings[rkey][pkey]
              end
          end
        end
    end

    puts placements
end

rank_teams(["ABC","ACB","ABC","ACB","ACB"])

# {
#   0: nil,
#   1: nil,
#   2: nil,
# }

# {
#   A: {
#       0: 5,
#       1: 0,
#       2: 0,
#   },
#   B: {
#       0: 0,
#       1: 2,
#       2: 3,
#   },
#   C: {
#       0: 0,
#       1: 3,
#       2: 2,
# }

# create a hash from the first index

# Input: votes = ["ABC","ACB","ABC","ACB","ACB"]
# Output: "ACB"
